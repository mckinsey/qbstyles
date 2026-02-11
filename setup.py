# QUANTUMBLACK CONFIDENTIAL
#
# Copyright (c) 2016 - present QuantumBlack Visual Analytics Ltd. All
# Rights Reserved.
#
# NOTICE: All information contained herein is, and remains the property of
# QuantumBlack Visual Analytics Ltd. and its suppliers, if any. The
# intellectual and technical concepts contained herein are proprietary to
# QuantumBlack Visual Analytics Ltd. and its suppliers and may be covered
# by UK and Foreign Patents, patents in process, and are protected by trade
# secret or copyright law. Dissemination of this information or
# reproduction of this material is strictly forbidden unless prior written
# permission is obtained from QuantumBlack Visual Analytics Ltd.

import re
from os import path

from setuptools import find_packages, setup

name = "qbstyles"
here = path.abspath(path.dirname(__file__))

# get package version
with open(path.join(here, name, "__init__.py"), encoding="utf-8") as f:
    version = re.search('__version__ = "([^\']+?)"', f.read()).group(1)

# get the dependencies and installs



# Get the long description from the README file
with open(path.join(here, "README.md"), encoding="utf-8") as f:

    readme = f.read()
from pathlib import Path

req_path = Path(__file__).with_name("requirements.txt")
install_requires = (
     [l.strip() for l in req_path.read_text(encoding="utf-8").splitlines()
     if l.strip() and not l.strip().startswith("#")]
    if req_path.exists()
    else ["matplotlib"]
)
setup(
    name=name,
    version=version,
    description="QB styles for common plotting libraries",
    long_description=readme,
    long_description_content_type='text/markdown',
    url="https://github.com/quantumblacklabs/qbstyles",
    author="QuantumBlack Labs",
    author_email="opensource@quantumblack.com",
    python_requires=">=3.5",
    packages=find_packages(),
    include_package_data=True,
    install_requires=install_requires,
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: Apache Software License",
        "Operating System :: OS Independent",
    ],
    license="Apache 2.0",
)
