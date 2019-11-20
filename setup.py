#!/usr/bin/env python

"""
setup.py file for SWIG example
"""

from setuptools import setup, Extension, find_packages


fastLA_module = Extension(
    'swig_mwe.fastLA._fastLA',
    sources=['swig_mwe/fastLA/fastLA_wrap.c', 'swig_mwe/fastLA/fastLA.c'],
)

setup(
    name = 'swig_mwe',
    version = '0.1',
    author      = "SWIG Docs",
    description = """Simple swig example from docs""",
    ext_modules = [fastLA_module],
    py_modules = ["fastLA"],
    packages = find_packages(),
    install_requires = [
        'pytest',
    ],
    zip_safe = False
)
