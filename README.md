# swig_mwe
Minimum working example for packaging C extensions in Python using SWIG.

## installation
Install SWIG:
```
brew install swig
```
Helper `build.sh` will run SWIG, build the python extension, and run tests.
```
git clone <>
cd swig_mwe
./build.sh
pip install .
```

Usage:
```
from swig_mwe.fastLA import fact
fact(4)
```
