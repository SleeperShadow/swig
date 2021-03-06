/* -----------------------------------------------------------------------------
 * Python API portion that goes into the runtime
 * ----------------------------------------------------------------------------- */

#ifdef __cplusplus
extern "C" {
#endif

/* -----------------------------------------------------------------------------
 * Constant declarations
 * ----------------------------------------------------------------------------- */

/* Constant Types */
#define SWIG_PY_POINTER 4
#define SWIG_PY_BINARY  5

/* Constant information structure */
typedef struct swig_const_info {
  int type;
  char *name;
  long lvalue;
  double dvalue;
  void   *pvalue;
  swig_type_info **ptype;
} swig_const_info;


/* -----------------------------------------------------------------------------
 * Wrapper of PyInstanceMethod_New() used in Python 3
 * It is exported to the generated module, used for -fastproxy
 * ----------------------------------------------------------------------------- */
SWIGRUNTIME PyObject* SWIG_PyInstanceMethod_New(PyObject *SWIGUNUSEDPARM(self), PyObject *func)
{
#if PY_VERSION_HEX >= 0x03000000
  return PyInstanceMethod_New(func);
#else
  return PyMethod_New(func, NULL, NULL);
#endif
}

#ifdef __cplusplus
}
#endif

