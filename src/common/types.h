#pragma once

#include <stdint.h>

#ifdef __cplusplus
#define EXTERN_C extern "C"
#else
#define EXTERN_C extern
#endif

typedef intptr_t off_t;
typedef int64_t loff_t;
typedef uintptr_t clock_t;
typedef int pid_t;
typedef unsigned int uid_t;
typedef unsigned int gid_t;
typedef intptr_t ssize_t;
