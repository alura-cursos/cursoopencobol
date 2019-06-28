       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB16.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = PERFORM COM REPETICOES FINITAS 
      ***                            USANDO VARYING
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
       77 WRK-CONTA       PIC 9(02)     VALUE ZEROS.       
       77 WRK-RESUL       PIC 9(03)     VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
            PERFORM 0100-INICIALIZAR.
             IF WRK-NUMERO GREATER 0 
               PERFORM 0200-PROCESSAR
               PERFORM 0300-FINALIZAR
            END-IF.  
            STOP RUN.
       0100-INICIALIZAR.     
            DISPLAY 'DIGITE O NUMERO..... : '.
            ACCEPT WRK-NUMERO.
       0200-PROCESSAR.
            PERFORM VARYING WRK-CONTA FROM 1 BY 1 UNTIL WRK-CONTA > 10
                 COMPUTE WRK-RESUL = WRK-NUMERO * WRK-CONTA
                 DISPLAY WRK-NUMERO ' X ' WRK-CONTA ' = ' WRK-RESUL
            END-PERFORM.
       0300-FINALIZAR.     
             DISPLAY  '--------- SAIDA DE DADOS ------------'.
             DISPLAY ' FIM DE PROCESSAMENTO '.

           
