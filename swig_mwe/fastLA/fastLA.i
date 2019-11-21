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

/*%include "fastLA.h"*/
