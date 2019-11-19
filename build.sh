#!/bin/sh

swig -python fastLA.i
python setup.py build_ext --inplace
python test.py
