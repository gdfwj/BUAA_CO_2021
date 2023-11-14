#include<stdio.h>
int main()
{
	int code=12288, code_handler=16768;
	int count=code,i;
	char r[100];
	FILE *fcode, *fhandler, *fp;
	fcode=fopen("code.txt","r");
	fhandler=fopen("code_handler.txt","r");
	if(fcode==NULL||fhandler==NULL)
	{
		if(fcode==NULL) printf("can not find code.txt\n");
		if(fhandler==NULL) printf("can not find code_handler.txt\n");
		return 0;
	}
	fp=fopen("code.coe","w");
	fprintf(fp,"memory_initialization_radix=16;\nmemory_initialization_vector=\n");
	while(fgets(r,100,fcode)!=NULL)
	{
		count+=4;
		for(i=0;r[i]!='\n';i++)
			fprintf(fp,"%c",r[i]);
		fprintf(fp,",\n");
	}
	while(count!=code_handler)
	{
		count+=4;
		fprintf(fp,"00000000,\n");
	}
	while(fgets(r,100,fhandler)!=NULL)
	{
		for(i=0;r[i]!='\n';i++)
			fprintf(fp,"%c",r[i]);
		fprintf(fp,",\n");
	}
	fprintf(fp,"00000000;");
	fclose(fcode);
	fclose(fhandler);
	fclose(fp);
	return 0;
}
