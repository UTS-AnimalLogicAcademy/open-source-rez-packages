import pkg_resources

if __name__ not in pkg_resources._namespace_packages:
    __import__('pkg_resources').declare_namespace(__name__)
else:
    from pkgutil import extend_path
    __path__ = extend_path(__path__, __name__)

