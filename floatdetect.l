
DGT	[0-9]

%%
{DGT}+[.]{DGT}*		{printf("%g is a float number.\n", atof(yytext));}
{DGT}*[e][-]{DGT}+	{printf("%s is a float number.\n", yytext);}
.+	{printf("Not a float number.\n");}
\n
%%

int yywrap(){
	return 1;
}

int main(){
	printf("Enter a float number--\n");
	yylex();
	return 0;
}