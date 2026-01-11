%{
#include "y.tab.h"
#include <stdio.h>
int line_num = 1;
%}

%option noyywrap

%%

"//"[^\n]* { } 
"/*"(.|\n)*?"*/" { } 
[ \t]+ { } 
\n { line_num++; } 

"pura_number" { return PURA_NUMBER; }
"thora_number" { return THORA_NUMBER; }
"jumla" { return JUMLA; }
"harf" { return HARF; }
"khali_kaam_kar" { return KHALI_KAAM_KAR; }
"shamil_karo" { return SHAMIL_KARO; }
"shuru_hoja" { return SHURU_HOJA; }
"maan_lo_ye" { return MAAN_LO_YE; }
"warna_maan_lo_ye" { return WARNA_MAAN_LO_YE; }
"bas_maan_lo_bhai" { return BAS_MAAN_LO_BHAI; }
"ghuma_de" { return GHUMA_DE; }
"ghumata_reh" { return GHUMATA_REH; }
"pehle_kar" { return PEHLE_KAR; }
"tham_ja" { return THAM_JA; }
"wapas_aja" { return WAPAS_AJA; }
"nikal_lo" { return NIKAL_LO; }
"sunle" { return SUNLE; }
"likhle" { return LIKHLE; }

"ke_barabar_ha" { return KE_BARABAR_HA; }
"ke_barabar_nahi_ha" { return KE_BARABAR_NAHI_HA; }
"se_bada_ha" { return SE_BADA_HA; }
"se_chota_ha" { return SE_CHOTA_HA; }
"se_bada_ya_barabar_ha" { return SE_BADA_YA_BARABAR_HA; }
"se_chota_ya_barabar_ha" { return SE_CHOTA_YA_BARABAR_HA; }
"palat_de" { return PALAT_DE; }
"aur_bhi" { return AUR_BHI; }
"ya_phir" { return YA_PHIR; }

"++" { return INC; }
"--" { return DEC; }
"=" { return ASSIGN; }
"+" { return PLUS; }
"-" { return MINUS; }
"*" { return MULT; }
"/" { return DIV; }
"%" { return MOD; }
";" { return SEMI; }
"{" { return LBRACE; } 
"}" { return RBRACE; } 
"," { return COMMA; }
"(" { return LPAREN; }
")" { return RPAREN; }
"<" { return LT; }
">" { return GT; }
"[" { return LBRACKET; }
"]" { return RBRACKET; }

[a-zA-Z][a-zA-Z0-9_]* { return IDENTIFIER; }
[0-9]+(\.[0-9]+)?(\^[+-]?[0-9]+)? { return NUMBER; } 
\"([^"\n]|\\.)*\" { return STRING_LITERAL; }
'([^'\n]|\\.)' { return CHAR_LITERAL; }

. { return yytext[0]; }

%%
