       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB5.
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
       77 WRK-NUMERO1       PIC 9(02)     VALUE ZEROS.
       77 WRK-NUMERO2       PIC 9(02)     VALUE ZEROS.       
       77 WRK-RESULTADO     PIC 9(04)     VALUE ZEROS.
       77 WRK-RESTO         PIC 9(02)     VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'DIGITE O PRIMEIRO NUMERO..... : '.
             ACCEPT WRK-NUMERO1.
           DISPLAY 'DIGITE O SEGUNDO NUMERO..... : '.
             ACCEPT WRK-NUMERO2.
           DISPLAY  '--------- SAIDA DE DADOS ------------'.
             DISPLAY 'NUMERO 1. : ' WRK-NUMERO1.
             DISPLAY 'NUMERO 2. : ' WRK-NUMERO2.

      *********** OPERACAO SOMA - COMANDO ADD *************             
             ADD WRK-NUMERO2 WRK-NUMERO1 TO WRK-RESULTADO.
             DISPLAY '== OPERACAO SOMA ======' WRK-RESULTADO.
             
      *********** OPERACAO SUBTRACAO - COMANDO SUBTRACT *************   
             SUBTRACT WRK-NUMERO1 FROM WRK-NUMERO2 GIVING WRK-RESULTADO. 
             DISPLAY '== OPERACAO SUBTRACAO ======' WRK-RESULTADO.

      ********** OPERACAO DIVISAO - COMANDO DIVIDE *************
             DIVIDE WRK-NUMERO1 BY WRK-NUMERO2 GIVING WRK-RESULTADO
                 REMAINDER WRK-RESTO.
             DISPLAY '== OPERACAO DIVISAO ==========' WRK-RESULTADO 
                     ' COM RESTO ' WRK-RESTO.

      ********** OPERACAO MULTIPLICACAO - COMANDO MULTIPLY *************
             MULTIPLY WRK-NUMERO1 BY WRK-NUMERO2 GIVING WRK-RESULTADO.
             DISPLAY '== OPERACAO MULTIPLICACAO ======  ' WRK-RESULTADO.
                         


           STOP RUN.
