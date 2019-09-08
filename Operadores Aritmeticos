       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB05.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = OPERACOES ARITMETICAS
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1       PIC 9(02)     VALUE ZEROS.
       77 WRK-NUM2       PIC 9(02)     VALUE ZEROS.       
       77 WRK-RESUL     PIC 9(04)     VALUE ZEROS.
       77 WRK-RESTO         PIC 9(02)     VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'DIGITE O PRIMEIRO NUMERO..... : '.
             ACCEPT WRK-NUM1.
           DISPLAY 'DIGITE O SEGUNDO NUMERO..... : '.
             ACCEPT WRK-NUM2.
           DISPLAY  '--------- SAIDA DE DADOS ------------'.
             DISPLAY 'NUMERO 1. : ' WRK-NUM1.
             DISPLAY 'NUMERO 2. : ' WRK-NUM2.

      *********** OPERACAO SOMA - COMANDO ADD *************             
             ADD WRK-NUM2 WRK-NUM1 TO WRK-RESUL.
             DISPLAY '== OPERACAO SOMA ======' WRK-RESUL.
             
      *********** OPERACAO SUBTRACAO - COMANDO SUBTRACT *************   
             SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL. 
             DISPLAY '== OPERACAO SUBTRACAO ======' WRK-RESUL.

      ********** OPERACAO DIVISAO - COMANDO DIVIDE *************
             DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
                 REMAINDER WRK-RESTO.
             DISPLAY '== OPERACAO DIVISAO ==========' WRK-RESUL 
                     ' COM RESTO ' WRK-RESTO.

      ********** OPERACAO MULTIPLICACAO - COMANDO MULTIPLY *************
             MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
             DISPLAY '== OPERACAO MULTIPLICACAO ======  ' WRK-RESUL.
                         


           STOP RUN.
