       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB15.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = PERFORM COM REPETICOES FINITAS times
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO      PIC 9(02)     VALUE ZEROS.
       77 WRK-CONTADOR    PIC 9(02)     VALUE 1.       
       77 WRK-RESUL       PIC 9(03)     VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
            PERFORM 0100-INICIALIZAR.
             IF WRK-NUMERO > 0 
               PERFORM 0200-PROCESSAR
            END-IF.  
               PERFORM 0300-FINALIZAR
            STOP RUN.
       0100-INICIALIZAR.     
            DISPLAY 'DIGITE O NUMERO..... : '.
            ACCEPT WRK-NUMERO.
       0200-PROCESSAR.
            PERFORM 10 TIMES
                 COMPUTE WRK-RESUL = WRK-NUMERO * WRK-CONTADOR
                 DISPLAY WRK-NUMERO ' X ' WRK-CONTADOR ' = ' WRK-RESUL
                  ADD 1 TO WRK-CONTADOR
            END-PERFORM.
       0300-FINALIZAR.     
             DISPLAY  '--------- SAIDA DE DADOS ------------'.
             DISPLAY ' FIM DE PROCESSAMENTO '.
