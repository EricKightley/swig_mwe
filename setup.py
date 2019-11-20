#!/usr/bin/env python

"""
setup.py file for SWIG example
"""

from setuptools import setup, Extension


fastLA_module = Extension('fastLA._fastLA',
                           sources=['fastLA/fastLA_wrap.c', 'fastLA/fastLA.c'],
                           )

setup (name = 'mymoduleEPK',
       version = '0.1',
       author      = "SWIG Docs",
       description = """Simple swig example from docs""",
       ext_modules = [fastLA_module],
       py_modules = ["fastLA"],
       )
