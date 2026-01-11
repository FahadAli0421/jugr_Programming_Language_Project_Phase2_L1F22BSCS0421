%{
#include <stdio.h>
#include <stdlib.h>

extern int yylex();
extern int line_num;
void yyerror(const char *s);
%}

%define parse.error verbose

%token PURA_NUMBER THORA_NUMBER JUMLA HARF
%token KHALI_KAAM_KAR SHAMIL_KARO SHURU_HOJA
%token MAAN_LO_YE WARNA_MAAN_LO_YE BAS_MAAN_LO_BHAI
%token GHUMA_DE GHUMATA_REH PEHLE_KAR
%token THAM_JA WAPAS_AJA NIKAL_LO
%token SUNLE LIKHLE
%token IDENTIFIER NUMBER STRING_LITERAL CHAR_LITERAL
%token KE_BARABAR_HA KE_BARABAR_NAHI_HA SE_BADA_HA SE_CHOTA_HA SE_BADA_YA_BARABAR_HA SE_CHOTA_YA_BARABAR_HA
%token PALAT_DE AUR_BHI YA_PHIR
%token INC DEC ASSIGN PLUS MINUS MULT DIV MOD
%token SEMI COMMA LPAREN RPAREN LBRACE RBRACE LT GT LBRACKET RBRACKET

%left YA_PHIR
%left AUR_BHI
%left KE_BARABAR_HA KE_BARABAR_NAHI_HA SE_BADA_HA SE_CHOTA_HA SE_BADA_YA_BARABAR_HA SE_CHOTA_YA_BARABAR_HA
%left PLUS MINUS
%left MULT DIV MOD
%right PALAT_DE INC DEC

%%

/* 1. Program Structure */
Program: ImportLibraries FunctionList mainFunc ;

ImportLibraries: SHAMIL_KARO STRING_LITERAL ImportLibraries 
               | ;

/* 2. Data Types */
DType: PURA_NUMBER | THORA_NUMBER | JUMLA | HARF ;

/* 3. Expressions */
Expression: DType IDENTIFIER SEMI
          | DType IDENTIFIER ASSIGN E SEMI
          | IDENTIFIER ASSIGN E SEMI
          | E SEMI
          ;

E: E PLUS F | E MINUS F | F ;
F: F MULT G | F DIV G | F MOD G | G ;
G: IDENTIFIER | NUMBER | U | LPAREN E RPAREN ;
U: IDENTIFIER INC | INC IDENTIFIER | IDENTIFIER DEC | DEC IDENTIFIER ;

/* 4. Arrays */
ArrayStatement: DType IDENTIFIER Array ASSIGN list SEMI
              | DType IDENTIFIER Array SEMI
              | IDENTIFIER Array ASSIGN E SEMI
              ;

Array: LBRACKET E RBRACKET Array | LBRACKET E RBRACKET ;
list: LBRACE Element RBRACE ;
Element: Value COMMA Element | Value ;
Value: NUMBER | list ;

/* 5. Conditional Statements */
condStatement: MAAN_LO_YE LPAREN condition RPAREN LBRACE code_block RBRACE condElse ;

condElse: WARNA_MAAN_LO_YE LPAREN condition RPAREN LBRACE code_block RBRACE condElse 
        | BAS_MAAN_LO_BHAI LBRACE code_block RBRACE 
        | ;

condition: E RelOp E | E LogOp E | E ;

RelOp: KE_BARABAR_HA | KE_BARABAR_NAHI_HA | SE_BADA_HA | SE_CHOTA_HA | SE_BADA_YA_BARABAR_HA | SE_CHOTA_YA_BARABAR_HA ;
LogOp: AUR_BHI | YA_PHIR ;

/* 6. Loops */
LoopType: ForLoop | WhileLoop | DoWhile ;

ForLoop: GHUMA_DE LPAREN ForInit condition SEMI ForUpdate RPAREN LBRACE code_block RBRACE ;
ForInit: Expression | SEMI ;
ForUpdate: IDENTIFIER ASSIGN E | U | ;

WhileLoop: GHUMATA_REH LPAREN condition RPAREN LBRACE code_block RBRACE ;

DoWhile: PEHLE_KAR LBRACE code_block RBRACE GHUMATA_REH LPAREN condition RPAREN SEMI ;

/* 7. Input and Output */
Input: SUNLE LPAREN STRING_LITERAL COMMA Id_List RPAREN SEMI ;
Id_List: IDENTIFIER COMMA Id_List | IDENTIFIER ;

Output: LIKHLE LPAREN Output_Content RPAREN SEMI ;
Output_Content: Output_Part PLUS Output_Content | Output_Part ;
Output_Part: STRING_LITERAL | IDENTIFIER | NUMBER | LPAREN E RPAREN ;

/* 8. Functions */
FunctionList: function FunctionList | ;

function: DType IDENTIFIER LPAREN func_Parameter RPAREN LBRACE code_block RBRACE ;

mainFunc: KHALI_KAAM_KAR SHURU_HOJA LPAREN RPAREN LBRACE code_block RBRACE 
          { printf("\n\nJugr Language: Syntax Analysis Successful!\n"); } ;

func_Parameter: DType IDENTIFIER ParamRest | ;
ParamRest: COMMA DType IDENTIFIER ParamRest | ;

FunctionCall: IDENTIFIER LPAREN Call_Args RPAREN ;
Call_Args: E ArgRest | ;
ArgRest: COMMA E ArgRest | ;

ReturnStatement: NIKAL_LO E SEMI | NIKAL_LO SEMI ;

/* 10. Code Block and Statements */
code_block: Statement code_block | ;

Statement: Expression
         | ArrayStatement
         | condStatement
         | LoopType
         | Input
         | Output
         | FunctionCall SEMI
         | ReturnStatement
         | THAM_JA SEMI
         | WAPAS_AJA SEMI
         | SEMI
         ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "check_prime_number.jugr:%d: error: %s\n", line_num, s);
}

int main() {
    return yyparse();
}
