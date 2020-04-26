#include "szemafor.h"
int main()
{
	din_t T_MATRIX[4]={10,15,25,15};
	din_t *T_MATRIX_POINTER;
	din_t start;
	din_t reset;
	din_t end;
	dout_t  SZEMAFOR_OUT[4];
	dout_t  *SZEMAFOR_POINTER;
	SZEMAFOR_POINTER=SZEMAFOR_OUT;
	T_MATRIX_POINTER=T_MATRIX;

	int i, retval=0;
		FILE        *fp;

		// Save the results to a file
		fp=fopen("result.dat","w");

		// Call the function for multiple transactions
		for (i=0; i<200; i++)
		{
		switch (i)
		{
			case 0: 	szemafor(T_MATRIX,SZEMAFOR_POINTER, 1);
						break;
			case 1: 	szemafor(T_MATRIX, SZEMAFOR_POINTER, 0);
						break;
			default: 	szemafor(T_MATRIX,SZEMAFOR_POINTER, 0);
		}
		fprintf(fp, "%d\t%d\t%d\t%d\n", SZEMAFOR_POINTER[0],SZEMAFOR_POINTER[1],SZEMAFOR_POINTER[2],SZEMAFOR_POINTER[3]);
		}
		fclose(fp);


return 0;
}
