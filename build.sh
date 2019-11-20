#!/bin/sh

swig -python swig_mwe/fastLA/fastLA.i
python setup.py build_ext --inplace
pytest
