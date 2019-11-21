/* -*- C -*-  (not really, but good for syntax highlighting) */
/* File: fastLA.i */

%module fastLA

%{
#define SWIG_FILE_WITH_INIT
#include "fastLA.h"
%}

%include "numpy.i"

%init %{
import_array();
%}

int fact(int n);

%apply (double* IN_ARRAY1, int DIM1) {(double* seq, int n)};
double rms(double* seq, int n);
clear (double* seq, int n);

%apply (int DIM1, double* IN_ARRAY1) {(int len1, double* vec1),
                                      (int len2, double* vec2)}
%rename (dot) my_dot;
%exception my_dot {
    $action
    if (PyErr_Occurred()) SWIG_fail;
}
%inline %{
double my_dot(int len1, double* vec1, int len2, double* vec2) {
    if (len1 != len2) {
        PyErr_Format(PyExc_ValueError,
                     "Arrays of lengths (%d,%d) given",
                     len1, len2);
        return 0.0;
    }
    return dot(len1, vec1, vec2);
}
%}
