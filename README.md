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

Desired behavior:
```
from mymoduleEPK.fastLA import fact
```

Current behavior:
```
from fastLA import fact
```

`cleanup.sh` removes all the build files to help with testing the build
