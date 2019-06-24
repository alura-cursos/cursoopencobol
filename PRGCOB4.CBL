       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB4.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS 
      ***   OBJETIVO DO PROGRAMA = RECEBER NOME E SALARIO 
      ***   IMPRIMIR FORMATADO  - USO DE VARIAVEIS MASCARA E COM VIRGULA
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************      
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME        PIC X(30)     VALUE SPACES.
       77 WRK-SALARIO     PIC 9(06)V99  VALUE ZEROS.       
       77 WRK-SALARIO-ED  PIC $ZZZ.ZZ9,99 VALUE ZEROS.              
       PROCEDURE DIVISION.
           DISPLAY 'DIGITE SEU NOME..... : '.
             ACCEPT WRK-NOME.
           DISPLAY 'DIGITE SEU SALARIO.. : '.
             ACCEPT WRK-SALARIO.
           DISPLAY  '--------- SAIDA DE DADOS ------------'.
             DISPLAY 'NOME..... : ' WRK-NOME.
             DISPLAY 'SALARIO.. : ' WRK-SALARIO.
             MOVE WRK-SALARIO TO WRK-SALARIO-ED.
             DISPLAY 'SALARIO.. : ' WRK-SALARIO-ED.             
               
           STOP RUN.
       
