

%%
[+]?[0-9]+	printf("Positive Integer\n");
[-]?[0-9]+	printf("Negative Integer\n");
.	
\n	
%%
int yywrap(){
	return 1;
}

int main(){
	printf("Positive and Negative Number separation\n");
	yylex();
	return 0;
}