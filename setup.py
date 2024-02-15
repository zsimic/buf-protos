from setuptools import setup


setup(
    name="buf-protos",
    version="0.1.8",
    package_dir={"": "src"},
    description="Protobuf wrapper for buf",
    long_description=open("README.md").read(),
    long_description_content_type="text/markdown",
    include_package_data=True,
    install_requires=["protobuf"],
    packages=[
        "buf",
        "buf.validate",
        "buf.validate.priv",
    ],
    url="https://github.com/zsimic/buf-protos",
    author="Zoran Simic",
    author_email="zoran@simicweb.com",
)
