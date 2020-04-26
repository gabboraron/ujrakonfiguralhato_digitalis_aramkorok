#ifndef _SZEMAFOR_H_
#define _SZEMAFOR_H_

//#include "systemc.h"

#include <stdio.h>

//typedef short din1_t;
typedef char din_t_reset;
typedef unsigned int din_t;
typedef unsigned char dout_t;
typedef enum {RDY, A_S, A_Z,A_P,B_S,B_Z,B_P, C_S,C_Z,C_P, D_S,D_Z, D_P} allapot_tipus;


 //void szemafor(din_t T_MATRIX[4], dout_t  SZEMAFOR_OUT[4], din_t rst, din_t start, din_t end);
void szemafor(din_t T_MATRIX[4], dout_t  SZEMAFOR_OUT[4], din_t start);
 //void szemafor(din_t T_MATRIX[4], dout_t  SZEMAFOR_OUT[4]);

#endif
