#!/bin/sh

swig -python fastLA/fastLA.i
python setup.py build_ext --inplace
pytest
