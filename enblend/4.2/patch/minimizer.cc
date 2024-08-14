/*
 * Copyright (C) 2012-2016 Christoph L. Spiel
 *
 * This file is part of Enblend.
 *
 * Enblend is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * Enblend is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Enblend; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include <gsl/gsl_errno.h>
#include <limits>

#include "minimizer.h"


Minimizer::Minimizer(size_t a_dimension) :
    dimension_(a_dimension),
    maximum_iteration_(ITERATIONS_PER_DIMENSION * a_dimension), iteration_(0U),
    f_goal_(boost::none), absolute_error_(sqrt(std::numeric_limits<double>::epsilon()))
{}


Minimizer::Minimizer(const Minimizer& a_minimizer) :
    dimension_(a_minimizer.dimension_),
    maximum_iteration_(a_minimizer.maximum_iteration_), iteration_(a_minimizer.iteration_),
    f_goal_(a_minimizer.f_goal_), absolute_error_(a_minimizer.absolute_error_)
{}


Minimizer&
Minimizer::operator=(const Minimizer& a_minimizer)
{
    if (this != &a_minimizer)
    {
        dimension_ = a_minimizer.dimension_;
        maximum_iteration_ = a_minimizer.maximum_iteration_;
        iteration_ = a_minimizer.iteration_;
        f_goal_ = a_minimizer.f_goal_;
        absolute_error_ = a_minimizer.absolute_error_;
    }

    return *this;
}


Minimizer*
Minimizer::set_maximum_number_of_iterations(unsigned n)
{
    maximum_iteration_ = n;
    return this;
}


Minimizer*
Minimizer::unset_maximum_number_of_iterations()
{
    maximum_iteration_ = boost::none;
    return this;
}


Minimizer*
Minimizer::set_goal(double a_goal)
{
    f_goal_ = a_goal;
    return this;
}


Minimizer*
Minimizer::unset_goal()
{
    f_goal_ = boost::none;
    return this;
}


Minimizer*
Minimizer::set_absolute_error(double an_absolute_error)
{
    if (an_absolute_error > 0.0)
    {
        absolute_error_ = std::max(an_absolute_error, sqrt(std::numeric_limits<double>::epsilon()));
        return this;
    }
    else
    {
        throw std::domain_error("Minimizer1D::set_absolute_error");
    }
}


Minimizer*
Minimizer::unset_absolute_error()
{
    absolute_error_ = boost::none;
    return this;
}


bool
Minimizer::has_reached_goal() const
{
    return f_goal_ && f_minimum() <= *f_goal_;
}


bool
Minimizer::has_reached_maximum_iteration() const
{
    return maximum_iteration_ && iteration_ >= *maximum_iteration_;
}


double
Minimizer::absolute_error() const
{
    return absolute_error_ ? *absolute_error_ : sqrt(std::numeric_limits<double>::epsilon());
}


////////////////////////////////////////////////////////////////////////


Minimizer1D::Minimizer1D(const gsl_function& a_function, double x_minimum, double x_lower, double x_upper) :
    Minimizer(1U), minimizer_(nullptr), function_(a_function),
    x_minimum_(x_minimum), x_lower_(x_lower), x_upper_(x_upper),
    relative_error_(0.0)
{
    require_ordered_x();
}


Minimizer1D::Minimizer1D(const Minimizer1D& a_minimizer) :
    Minimizer(a_minimizer), minimizer_(nullptr), function_(a_minimizer.function_),
    x_minimum_(a_minimizer.x_minimum_), x_lower_(a_minimizer.x_lower_), x_upper_(a_minimizer.x_upper_),
    relative_error_(a_minimizer.relative_error_)
{}


Minimizer1D&
Minimizer1D::operator=(const Minimizer1D& a_minimizer)
{
    if (this != &a_minimizer)
    {
        Minimizer::operator=(a_minimizer);

        function_ = a_minimizer.function_;
        x_minimum_ = a_minimizer.x_minimum_;
        x_lower_ = a_minimizer.x_lower_;
        x_upper_ = a_minimizer.x_upper_;
        relative_error_ = a_minimizer.relative_error_;

        gsl_min_fminimizer_free(minimizer_);
        minimizer_ = nullptr;
        initialize(a_minimizer.type_);
    }

    return *this;
}


std::string
Minimizer1D::proper_name() const
{
    return std::string(gsl_min_fminimizer_name(minimizer_));
}


void
Minimizer1D::set_bracket(const gsl_function& a_function, double x_minimum, double x_lower, double x_upper)
{
    require_ordered_x();

    function_ = a_function;
    x_minimum_ = x_minimum;
    x_lower_ = x_lower;
    x_upper_ = x_upper;

    const int status = gsl_min_fminimizer_set(minimizer_, &function_, x_minimum_, x_lower_, x_upper_);

    if (status == GSL_EINVAL)
    {
        throw minimum_not_bracketed("Minimizer1D::set_bracket: minimum not bracketed");
    }
    else if (status != GSL_SUCCESS)
    {
        throw std::runtime_error("Minimizer1D::set_bracket");
    }
}


Minimizer1D*
Minimizer1D::set_relative_error(double a_relative_error)
{
    if (a_relative_error >= 0.0)
    {
        relative_error_ = a_relative_error;
        return this;
    }
    else
    {
        throw std::domain_error("Minimizer1D::set_relative_error");
    }
}


Minimizer1D*
Minimizer1D::unset_relative_error()
{
    relative_error_ = boost::none;
    return this;
}


void
Minimizer1D::run()
{
    int test_status = GSL_CONTINUE;

    while (test_status == GSL_CONTINUE)
    {
        next_iteration();

        const int minimizer_status = gsl_min_fminimizer_iterate(minimizer_);
        if (minimizer_status == GSL_EBADFUNC || // singular point or
            minimizer_status == GSL_FAILURE)    // could not improve minimum
        {
            break;
        }

        x_lower_ = gsl_min_fminimizer_x_lower(minimizer_);
        x_upper_ = gsl_min_fminimizer_x_upper(minimizer_);
        x_minimum_ = gsl_min_fminimizer_x_minimum(minimizer_);

        if (has_reached_goal() || has_reached_maximum_iteration())
        {
            break;
        }

        test_status = gsl_min_test_interval(x_lower_, x_upper_, absolute_error(), relative_error());
    }
}


void
Minimizer1D::require_ordered_x() const
{
    if (!(x_lower_ <= x_minimum_ && x_minimum_ <= x_upper_))
    {
        throw std::runtime_error("Minimizer1D::require_ordered_x: x-values not ascending");
    }
}


void
Minimizer1D::initialize(const gsl_min_fminimizer_type* a_minimizer_type)
{
    assert(a_minimizer_type != nullptr);
    type_ = a_minimizer_type;

    assert(minimizer_ == nullptr);
    minimizer_ = gsl_min_fminimizer_alloc(type_);
    if (minimizer_ == nullptr)
    {
        throw std::runtime_error("Minimizer1D::initialize: no memory");
    }

    set_bracket(function_, x_minimum_, x_lower_, x_upper_);
}


double
Minimizer1D::relative_error() const
{
    return relative_error_ ? *relative_error_ : 0.0;
}


bool
Minimizer1D::has_reached_tolerance() const
{
    return gsl_min_test_interval(x_lower_, x_upper_, absolute_error(), relative_error()) == GSL_SUCCESS;
}


////////////////////////////////////////////////////////////////////////


GoldenSectionMinimizer1D::GoldenSectionMinimizer1D(const gsl_function& a_function,
                                                   double x_minimum,
                                                   double x_lower, double x_upper) :
    Minimizer1D(a_function, x_minimum, x_lower, x_upper)
{
    initialize(gsl_min_fminimizer_goldensection);
}


GoldenSectionMinimizer1D::GoldenSectionMinimizer1D(const GoldenSectionMinimizer1D& a_minimizer) :
    Minimizer1D(a_minimizer)
{
    initialize(gsl_min_fminimizer_goldensection);
}


////////////////////////////////////////////////////////////////////////


BrentMinimizer1D::BrentMinimizer1D(const gsl_function& a_function,
                                   double x_minimum,
                                   double x_lower, double x_upper) :
    Minimizer1D(a_function, x_minimum, x_lower, x_upper)
{
    initialize(gsl_min_fminimizer_brent);
}


BrentMinimizer1D::BrentMinimizer1D(const BrentMinimizer1D& a_minimizer) :
    Minimizer1D(a_minimizer)
{
    initialize(gsl_min_fminimizer_brent);
}


////////////////////////////////////////////////////////////////////////


GillMurrayMinimizer1D::GillMurrayMinimizer1D(const gsl_function& a_function,
                                             double x_minimum,
                                             double x_lower, double x_upper) :
    Minimizer1D(a_function, x_minimum, x_lower, x_upper)
{
    initialize(gsl_min_fminimizer_quad_golden);
}


GillMurrayMinimizer1D::GillMurrayMinimizer1D(const GillMurrayMinimizer1D& a_minimizer) :
    Minimizer1D(a_minimizer)
{
    initialize(gsl_min_fminimizer_quad_golden);
}


////////////////////////////////////////////////////////////////////////


MinimizerMultiDimensionNoDerivative::MinimizerMultiDimensionNoDerivative
(const gsl_multimin_function& a_function,
 const array_type& a_start, const array_type& some_step_sizes) :
    Minimizer(a_start.size()), minimizer_(nullptr), function_(a_function),
    xs_(gsl_vector_alloc(a_start.size())), step_sizes_(gsl_vector_alloc(some_step_sizes.size())),
    characteristic_size_(std::numeric_limits<double>::max())
{
    if (xs_ == nullptr || step_sizes_ == nullptr)
    {
        throw std::runtime_error("MinimizerMultiDimensionNoDerivative::constructor: no memory");
    }
    if (a_start.size() != some_step_sizes.size())
    {
        throw std::invalid_argument("MinimizerMultiDimensionNoDerivative::constructor: dimension mismatch");
    }

    copy_to_gsl_vector(a_start.begin(), a_start.end(), xs_);
    initialize_step_sizes(some_step_sizes);
}


MinimizerMultiDimensionNoDerivative::MinimizerMultiDimensionNoDerivative
(const gsl_multimin_function& a_function, const array_type& a_start) :
    Minimizer(a_start.size()), minimizer_(nullptr), function_(a_function),
    xs_(gsl_vector_alloc(a_start.size())), step_sizes_(gsl_vector_alloc(a_start.size())),
    characteristic_size_(std::numeric_limits<double>::max())
{
    if (xs_ == nullptr || step_sizes_ == nullptr)
    {
        throw std::runtime_error("MinimizerMultiDimensionNoDerivative::constructor: no memory");
    }

    copy_to_gsl_vector(a_start.begin(), a_start.end(), xs_);
    gsl_vector_set_all(step_sizes_, 1.0);
}


MinimizerMultiDimensionNoDerivative::MinimizerMultiDimensionNoDerivative
(const MinimizerMultiDimensionNoDerivative& a_minimizer) :
    Minimizer(a_minimizer), minimizer_(nullptr), function_(a_minimizer.function_),
    xs_(gsl_vector_alloc(dimension())), step_sizes_(gsl_vector_alloc(dimension())),
    characteristic_size_(a_minimizer.characteristic_size_)
{
    if (xs_ == nullptr || step_sizes_ == nullptr)
    {
        throw std::runtime_error("MinimizerMultiDimensionNoDerivative::constructor: no memory");
    }

    gsl_vector_memcpy(xs_, a_minimizer.xs_);
    gsl_vector_memcpy(step_sizes_, a_minimizer.step_sizes_);
}


MinimizerMultiDimensionNoDerivative&
MinimizerMultiDimensionNoDerivative::operator=(const MinimizerMultiDimensionNoDerivative& a_minimizer)
{
    if (this != &a_minimizer)
    {
        Minimizer::operator=(a_minimizer); // or equivalently: this->Minimizer::operator=(a_minimizer)

        function_ = a_minimizer.function_;
        characteristic_size_ = a_minimizer.characteristic_size_;

        if (dimension() != a_minimizer.dimension())
        {
            set_dimension(a_minimizer.dimension());

            gsl_vector_free(xs_);
            gsl_vector_free(step_sizes_);

            xs_ = gsl_vector_alloc(a_minimizer.dimension());
            step_sizes_ = gsl_vector_alloc(a_minimizer.dimension());
            if (xs_ == nullptr || step_sizes_ == nullptr)
            {
                throw std::runtime_error("MinimizerMultiDimensionNoDerivative::operator=: no memory");
            }
        }

        gsl_vector_memcpy(xs_, a_minimizer.xs_);
        gsl_vector_memcpy(step_sizes_, a_minimizer.step_sizes_);

        gsl_multimin_fminimizer_free(minimizer_);
        minimizer_ = nullptr;
        initialize(a_minimizer.type_);
    }

    return *this;
}


MinimizerMultiDimensionNoDerivative::~MinimizerMultiDimensionNoDerivative()
{
    gsl_vector_free(step_sizes_);
    gsl_vector_free(xs_);
    gsl_multimin_fminimizer_free(minimizer_);
}


void
MinimizerMultiDimensionNoDerivative::set_start(const array_type& a_start)
{
    if (a_start.size() == dimension())
    {
        copy_to_gsl_vector(a_start.begin(), a_start.end(), xs_);
    }
    else
    {
        throw std::invalid_argument("MinimizerMultiDimensionNoDerivative::set_start: dimension mismatch");
    }

    set();
}


void
MinimizerMultiDimensionNoDerivative::set_step_sizes(const array_type& some_step_sizes)
{
    initialize_step_sizes(some_step_sizes);
    set();
}


std::string
MinimizerMultiDimensionNoDerivative::proper_name() const
{
    return std::string(gsl_multimin_fminimizer_name(minimizer_));
}


void
MinimizerMultiDimensionNoDerivative::run()
{
    int test_status = GSL_CONTINUE;

    while (test_status == GSL_CONTINUE)
    {
        next_iteration();

        const int minimizer_status = gsl_multimin_fminimizer_iterate(minimizer_);
        if (minimizer_status == GSL_ENOPROG ||    // could not improve minimum
            has_reached_goal() || has_reached_maximum_iteration())
        {
            break;
        }

        characteristic_size_ = gsl_multimin_fminimizer_size(minimizer_);
        test_status = gsl_multimin_test_size(characteristic_size_, absolute_error());
    }

    characteristic_size_ = gsl_multimin_fminimizer_size(minimizer_);
    gsl_vector_memcpy(xs_, gsl_multimin_fminimizer_x(minimizer_));
}


double
MinimizerMultiDimensionNoDerivative::f_minimum() const
{
    return gsl_multimin_fminimizer_minimum(minimizer_);
}


void
MinimizerMultiDimensionNoDerivative::initialize_step_sizes(const array_type& some_step_sizes)
{
    if (some_step_sizes.size() == dimension())
    {
        array_type::const_iterator x = some_step_sizes.begin();
        unsigned i = 0U;

        while (x != some_step_sizes.end())
        {
            if (*x > 0.0)
            {
                gsl_vector_set(step_sizes_, i, *x);
            }
            else
            {
                throw std::runtime_error("MinimizerMultiDimensionNoDerivative::initialize_step_sizes: "
                                         "non-positive step size");
            }

            ++x;
            ++i;
        }
    }
    else
    {
        throw std::invalid_argument("MinimizerMultiDimensionNoDerivative::initialize_step_sizes: "
                                    "dimension mismatch");
    }
}


void
MinimizerMultiDimensionNoDerivative::set()
{
    assert(minimizer_ != nullptr);
    const int status = gsl_multimin_fminimizer_set(minimizer_, &function_, xs_, step_sizes_);

    if (status != GSL_SUCCESS)
    {
        throw std::runtime_error("MinimizerMultiDimensionNoDerivative::set");
    }
}


void
MinimizerMultiDimensionNoDerivative::initialize(const gsl_multimin_fminimizer_type* a_fminimizer_type)
{
    assert(a_fminimizer_type != nullptr);
    type_ = a_fminimizer_type;

    assert(minimizer_ == nullptr);
    minimizer_ = gsl_multimin_fminimizer_alloc(type_, dimension());
    if (minimizer_ == nullptr)
    {
        throw std::runtime_error("MinimizerMultiDimensionNoDerivative::initialize: no memory");
    }

    set();
}


////////////////////////////////////////////////////////////////////////


MinimizerMultiDimensionSimplex::MinimizerMultiDimensionSimplex(const gsl_multimin_function& a_function,
                                                               const array_type& a_start,
                                                               const array_type& some_step_sizes) :
    MinimizerMultiDimensionNoDerivative(a_function, a_start, some_step_sizes)
{
    initialize(gsl_multimin_fminimizer_nmsimplex);
}


MinimizerMultiDimensionSimplex::MinimizerMultiDimensionSimplex(const gsl_multimin_function& a_function,
                                                               const array_type& a_start) :
    MinimizerMultiDimensionNoDerivative(a_function, a_start)
{
    initialize(gsl_multimin_fminimizer_nmsimplex);
}


MinimizerMultiDimensionSimplex::MinimizerMultiDimensionSimplex(const MinimizerMultiDimensionSimplex& a_minimizer) :
    MinimizerMultiDimensionNoDerivative(a_minimizer)
{
    initialize(gsl_multimin_fminimizer_nmsimplex);
}


////////////////////////////////////////////////////////////////////////


MinimizerMultiDimensionSimplex2::MinimizerMultiDimensionSimplex2(const gsl_multimin_function& a_function,
                                                                 const array_type& a_start,
                                                                 const array_type& some_step_sizes) :
    MinimizerMultiDimensionNoDerivative(a_function, a_start, some_step_sizes)
{
    initialize(gsl_multimin_fminimizer_nmsimplex2);
}


MinimizerMultiDimensionSimplex2::MinimizerMultiDimensionSimplex2(const gsl_multimin_function& a_function,
                                                                 const array_type& a_start) :
    MinimizerMultiDimensionNoDerivative(a_function, a_start)
{
    initialize(gsl_multimin_fminimizer_nmsimplex2);
}


MinimizerMultiDimensionSimplex2::MinimizerMultiDimensionSimplex2(const MinimizerMultiDimensionSimplex2& a_minimizer) :
    MinimizerMultiDimensionNoDerivative(a_minimizer)
{
    initialize(gsl_multimin_fminimizer_nmsimplex2);
}


////////////////////////////////////////////////////////////////////////


MinimizerMultiDimensionSimplex2Randomized::MinimizerMultiDimensionSimplex2Randomized
(const gsl_multimin_function& a_function,
 const array_type& a_start,
 const array_type& some_step_sizes) :
    MinimizerMultiDimensionNoDerivative(a_function, a_start, some_step_sizes)
{
    initialize(gsl_multimin_fminimizer_nmsimplex2rand);
}


MinimizerMultiDimensionSimplex2Randomized::MinimizerMultiDimensionSimplex2Randomized
(const gsl_multimin_function& a_function,
 const array_type& a_start) :
    MinimizerMultiDimensionNoDerivative(a_function, a_start)
{
    initialize(gsl_multimin_fminimizer_nmsimplex2rand);
}


MinimizerMultiDimensionSimplex2Randomized::MinimizerMultiDimensionSimplex2Randomized
(const MinimizerMultiDimensionSimplex2Randomized& a_minimizer) :
    MinimizerMultiDimensionNoDerivative(a_minimizer)
{
    initialize(gsl_multimin_fminimizer_nmsimplex2rand);
}
