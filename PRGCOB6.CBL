       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB4.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = VALOR NEGATIVO - USO DO SINAL
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO1       PIC S9(02)     VALUE ZEROS.
       77 WRK-NUMERO2       PIC S9(02)     VALUE ZEROS.       
       77 WRK-RESULTADO     PIC S9(02)     VALUE ZEROS.
       77 WRK-RESULTADO-ED  PIC -99      VALUE ZEROS.       
        PROCEDURE DIVISION.
           DISPLAY 'DIGITE O PRIMEIRO NUMERO..... : '.
             ACCEPT WRK-NUMERO1.
           DISPLAY 'DIGITE O SEGUNDO NUMERO..... : '.
             ACCEPT WRK-NUMERO2.
           DISPLAY  '--------- SAIDA DE DADOS ------------'.
             DISPLAY 'NUMERO 1. : ' WRK-NUMERO1.
             DISPLAY 'NUMERO 2. : ' WRK-NUMERO2.

      *********** OPERACAO SUBTRACAO - COMANDO SUBTRACT *************   
             SUBTRACT WRK-NUMERO2 FROM WRK-NUMERO1 GIVING WRK-RESULTADO. 
             MOVE WRK-RESULTADO TO WRK-RESULTADO-ED.
             DISPLAY '== OPERACAO SUBTRACAO ======  ' WRK-RESULTADO-ED.
                   


           STOP RUN.
