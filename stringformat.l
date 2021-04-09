
%%
.+[A-Z][0-9][0-9]	printf("Format is Correct.\n");
.+	printf("Incorrect format.\n");
\n
%%

int yywrap(){
	return 1;
}

int main(){
	printf("Give a input--\n");
	yylex();
	return 0;
}