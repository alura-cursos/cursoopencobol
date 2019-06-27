       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB10.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = VARIAVEL NIVEL 66 - RENAME
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-DADOS-USUARIO.
         02 WRK-NOME     PIC X(20)     VALUE SPACES.
         02 WRK-ENDERECO PIC X(30)     VALUE SPACES.
         02 WRK-NUMERO   PIC 9(04)     VALUE ZEROS.
         02 WRK-CIDADE   PIC X(30)     VALUE SPACES.
         02 WRK-ESTADO   PIC X(02)     VALUE SPACES.
         66 WRK-ENDNUM   RENAMES WRK-ENDERECO THRU WRK-NUMERO.  

        PROCEDURE DIVISION.
           DISPLAY 'NOME DO USUARIO..... : '.
             ACCEPT WRK-NOME.
           DISPLAY 'ENDERECO............. : '.
             ACCEPT WRK-ENDERECO.
           DISPLAY 'NUMERO.............. : '.
             ACCEPT WRK-NUMERO.
           DISPLAY 'CIDADE.............. : '.
             ACCEPT WRK-CIDADE.
           DISPLAY 'ESTADO.............. : '.
             ACCEPT WRK-ESTADO.
             
           DISPLAY  '--------- SAIDA DE DADOS ------------'.
             DISPLAY 'VARIAVEL 66 COM ENDERECO E NUMERO ' 
             DISPLAY WRK-ENDNUM.
             
              
           STOP RUN.
