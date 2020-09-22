## ! DO NOT MANUALLY INVOKE THIS setup.py, USE CATKIN INSTEAD  # noqa: E266

from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

# fetch values from package.xml
setup_args = generate_distutils_setup(
    packages=["patch_msg"],
    package_dir={"": "src"},
)

setup(**setup_args)
