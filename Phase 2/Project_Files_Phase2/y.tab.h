/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    PURA_NUMBER = 258,             /* PURA_NUMBER  */
    THORA_NUMBER = 259,            /* THORA_NUMBER  */
    JUMLA = 260,                   /* JUMLA  */
    HARF = 261,                    /* HARF  */
    KHALI_KAAM_KAR = 262,          /* KHALI_KAAM_KAR  */
    SHAMIL_KARO = 263,             /* SHAMIL_KARO  */
    SHURU_HOJA = 264,              /* SHURU_HOJA  */
    MAAN_LO_YE = 265,              /* MAAN_LO_YE  */
    WARNA_MAAN_LO_YE = 266,        /* WARNA_MAAN_LO_YE  */
    BAS_MAAN_LO_BHAI = 267,        /* BAS_MAAN_LO_BHAI  */
    GHUMA_DE = 268,                /* GHUMA_DE  */
    GHUMATA_REH = 269,             /* GHUMATA_REH  */
    PEHLE_KAR = 270,               /* PEHLE_KAR  */
    THAM_JA = 271,                 /* THAM_JA  */
    WAPAS_AJA = 272,               /* WAPAS_AJA  */
    NIKAL_LO = 273,                /* NIKAL_LO  */
    SUNLE = 274,                   /* SUNLE  */
    LIKHLE = 275,                  /* LIKHLE  */
    IDENTIFIER = 276,              /* IDENTIFIER  */
    NUMBER = 277,                  /* NUMBER  */
    STRING_LITERAL = 278,          /* STRING_LITERAL  */
    CHAR_LITERAL = 279,            /* CHAR_LITERAL  */
    KE_BARABAR_HA = 280,           /* KE_BARABAR_HA  */
    KE_BARABAR_NAHI_HA = 281,      /* KE_BARABAR_NAHI_HA  */
    SE_BADA_HA = 282,              /* SE_BADA_HA  */
    SE_CHOTA_HA = 283,             /* SE_CHOTA_HA  */
    SE_BADA_YA_BARABAR_HA = 284,   /* SE_BADA_YA_BARABAR_HA  */
    SE_CHOTA_YA_BARABAR_HA = 285,  /* SE_CHOTA_YA_BARABAR_HA  */
    PALAT_DE = 286,                /* PALAT_DE  */
    AUR_BHI = 287,                 /* AUR_BHI  */
    YA_PHIR = 288,                 /* YA_PHIR  */
    INC = 289,                     /* INC  */
    DEC = 290,                     /* DEC  */
    ASSIGN = 291,                  /* ASSIGN  */
    PLUS = 292,                    /* PLUS  */
    MINUS = 293,                   /* MINUS  */
    MULT = 294,                    /* MULT  */
    DIV = 295,                     /* DIV  */
    MOD = 296,                     /* MOD  */
    SEMI = 297,                    /* SEMI  */
    COMMA = 298,                   /* COMMA  */
    LPAREN = 299,                  /* LPAREN  */
    RPAREN = 300,                  /* RPAREN  */
    LBRACE = 301,                  /* LBRACE  */
    RBRACE = 302,                  /* RBRACE  */
    LT = 303,                      /* LT  */
    GT = 304,                      /* GT  */
    LBRACKET = 305,                /* LBRACKET  */
    RBRACKET = 306                 /* RBRACKET  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define PURA_NUMBER 258
#define THORA_NUMBER 259
#define JUMLA 260
#define HARF 261
#define KHALI_KAAM_KAR 262
#define SHAMIL_KARO 263
#define SHURU_HOJA 264
#define MAAN_LO_YE 265
#define WARNA_MAAN_LO_YE 266
#define BAS_MAAN_LO_BHAI 267
#define GHUMA_DE 268
#define GHUMATA_REH 269
#define PEHLE_KAR 270
#define THAM_JA 271
#define WAPAS_AJA 272
#define NIKAL_LO 273
#define SUNLE 274
#define LIKHLE 275
#define IDENTIFIER 276
#define NUMBER 277
#define STRING_LITERAL 278
#define CHAR_LITERAL 279
#define KE_BARABAR_HA 280
#define KE_BARABAR_NAHI_HA 281
#define SE_BADA_HA 282
#define SE_CHOTA_HA 283
#define SE_BADA_YA_BARABAR_HA 284
#define SE_CHOTA_YA_BARABAR_HA 285
#define PALAT_DE 286
#define AUR_BHI 287
#define YA_PHIR 288
#define INC 289
#define DEC 290
#define ASSIGN 291
#define PLUS 292
#define MINUS 293
#define MULT 294
#define DIV 295
#define MOD 296
#define SEMI 297
#define COMMA 298
#define LPAREN 299
#define RPAREN 300
#define LBRACE 301
#define RBRACE 302
#define LT 303
#define GT 304
#define LBRACKET 305
#define RBRACKET 306

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
