#define PIROS 4
#define SARGA 2
#define ZOLD 1
#define ZERO 0
#include "szemafor.h"
 static unsigned int szamlalo=25;
 static allapot_tipus allapot=RDY;
 //T_MATRIX[4] -az A,B,C és D szemaforok idõzítése a ZÖLD jelzésre-bemenet
 //SZEMAFOR_OUT -az A,B, C és D szemaforok vezérlése -kimenet
//void szemafor(din_t T_MATRIX[4], dout_t  SZEMAFOR_OUT[4], din_t rst, din_t start, din_t end)
 void szemafor(din_t T_MATRIX[4], dout_t  SZEMAFOR_OUT[4],din_t start)
 {
   din_t T_VAL_MAT[4]; //belsõ változó: a modulon belül tároljuk bemásoljuk az idõzítésekhez rendelt értékeket
   dout_t SZEMAFOR_VAL[4]; //belsõ változó: tároljuk a szemaforok pillanatnyi állapotát
  static din_t_reset rst;

   unsigned char i;

   //bemásoljuk az idõzítésekhez rendelt értékeket a  T_VAL_MAT belsõ változóba
 szemafor_label5:for (i = 0; i < 4; i++)
	   	   T_VAL_MAT[i]=T_MATRIX[i];  //bemásoljuk az idõzítésekhez rendelt értékeket

if (rst==1)
{
	allapot=RDY;
}


pipeline:{
switch(allapot) {

   case RDY :

	   szemafor_label6:for (i = 0; i < 4; i++)
		   SZEMAFOR_VAL[i]=ZERO;
	   if (start==1)
		   allapot=A_S;
	   else
		   allapot=RDY;
      break; /* optional */

   case A_S :
	   SZEMAFOR_VAL[0]=SARGA;
	   SZEMAFOR_VAL[1]=PIROS;
	   SZEMAFOR_VAL[2]=PIROS;
	   SZEMAFOR_VAL[3]=PIROS;
	   szamlalo=T_VAL_MAT[0];
	   allapot=A_Z;
      break; /* optional */

   case A_Z :
	   SZEMAFOR_VAL[0]=ZOLD;
	   SZEMAFOR_VAL[1]=PIROS;
	   SZEMAFOR_VAL[2]=PIROS;
	   SZEMAFOR_VAL[3]=PIROS;
	   szamlalo=szamlalo-1;
	   if (szamlalo==0)
		   allapot=A_P;
	   else
		   allapot=A_Z;
         break; /* optional */

   case A_P :
	   SZEMAFOR_VAL[0]=PIROS;
	   SZEMAFOR_VAL[1]=PIROS;
	   SZEMAFOR_VAL[2]=PIROS;
	   SZEMAFOR_VAL[3]=PIROS;
	   allapot=B_S;
         break; /* optional */

   case B_S :
	   SZEMAFOR_VAL[0]=PIROS;
	   SZEMAFOR_VAL[1]=SARGA;
	   SZEMAFOR_VAL[2]=PIROS;
	   SZEMAFOR_VAL[3]=PIROS;
	   szamlalo=T_VAL_MAT[1];
	   allapot=B_Z;
      break; /* optional */

   case B_Z :
	   SZEMAFOR_VAL[0]=PIROS;
	   SZEMAFOR_VAL[1]=ZOLD;
	   SZEMAFOR_VAL[2]=PIROS;
	   SZEMAFOR_VAL[3]=PIROS;
	   szamlalo=szamlalo-1;
	 	   if (szamlalo==0)
	 		   allapot=B_P;
	 	   else
	 		   allapot=B_Z;
         break; /* optional */

   case B_P :
	   SZEMAFOR_VAL[0]=PIROS;
	   SZEMAFOR_VAL[1]=PIROS;
	   SZEMAFOR_VAL[2]=PIROS;
	   SZEMAFOR_VAL[3]=PIROS;
	   allapot=C_S;
         break; /* optional */

   case C_S :
	   SZEMAFOR_VAL[0]=PIROS;
	   SZEMAFOR_VAL[1]=PIROS;
	   SZEMAFOR_VAL[2]=SARGA;
	   SZEMAFOR_VAL[3]=PIROS;
	   szamlalo=T_VAL_MAT[2];
	   allapot=C_Z;
      break; /* optional */

   case C_Z :
	   SZEMAFOR_VAL[0]=PIROS;
	   SZEMAFOR_VAL[1]=PIROS;
	   SZEMAFOR_VAL[2]=ZOLD;
	   SZEMAFOR_VAL[3]=PIROS;
	   szamlalo=szamlalo-1;
	 	   if (szamlalo==0)
	 		   allapot=C_P;
	 	   else
	 		   allapot=C_Z;
         break; /* optional */

   case C_P :
	   SZEMAFOR_VAL[0]=PIROS;
	   SZEMAFOR_VAL[1]=PIROS;
	   SZEMAFOR_VAL[2]=PIROS;
	   SZEMAFOR_VAL[3]=PIROS;
	   allapot=D_S;
         break; /* optional */

   case D_S :
	   SZEMAFOR_VAL[0]=PIROS;
	   SZEMAFOR_VAL[1]=PIROS;
	   SZEMAFOR_VAL[2]=PIROS;
	   SZEMAFOR_VAL[3]=SARGA;
	   szamlalo=T_VAL_MAT[3];
	   allapot=D_Z;
      break; /* optional */

   case D_Z :
	   SZEMAFOR_VAL[0]=PIROS;
	   SZEMAFOR_VAL[1]=PIROS;
	   SZEMAFOR_VAL[2]=PIROS;
	   SZEMAFOR_VAL[3]=ZOLD;
	   szamlalo=szamlalo-1;
	 	   if (szamlalo==0)
	 		   allapot=D_P;
	 	   else
	 		   allapot=D_Z;
         break; /* optional */

   case D_P :
	   SZEMAFOR_VAL[0]=PIROS;
	   SZEMAFOR_VAL[1]=PIROS;
	   SZEMAFOR_VAL[2]=PIROS;
	   SZEMAFOR_VAL[3]=PIROS;
	   if (start==1)
	  		   allapot=A_S;
	  	   else
	  		   allapot=RDY;
         break; /* optional */

}

//A beállított szemafor értékeket kimásoljuk a kimeneti változókra
szemafor_label0:for (i = 0; i < 4; i++)
		   SZEMAFOR_OUT[i]=SZEMAFOR_VAL[i];
}
//return SZEMAFOR_VAL;
return;

//}

}
