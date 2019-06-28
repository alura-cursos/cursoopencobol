       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB17.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = PERFORM COM REPETICOES CONTROLADAS
      ***                            POR SAIDA FORCADA (UNTIL)
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VENDAS      PIC 9(06)V99        VALUE ZEROS.
       77 WRK-QT          PIC 9(02)           VALUE ZEROS.       
       77 WRK-MEDIA       PIC 9(06)V99        VALUE ZEROS.
       77 WRK-ACUM        PIC 9(07)V99        VALUE ZEROS.
       77 WRK-ACUM-ED        PIC Z.ZZZ.ZZ9,99 VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
            PERFORM 0100-INICIALIZAR.
             IF WRK-VENDAS GREATER 0 
               PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
               PERFORM 0300-FINALIZAR
            END-IF.  
            STOP RUN.
       0100-INICIALIZAR.     
            PERFORM 0400-ENTRADA-DADOS.
       0200-PROCESSAR.
             ADD 1 TO WRK-QT.
             ADD WRK-VENDAS TO WRK-ACUM.
              PERFORM 0400-ENTRADA-DADOS.
            
       0300-FINALIZAR.     
             DISPLAY  '--------- SAIDA DE DADOS ------------'.
              DISPLAY 'QUANTIDADE DE VENDAS ' WRK-QT.
                MOVE WRK-ACUM TO WRK-ACUM-ED.
              DISPLAY 'TOTAL DAS VENDAS     ' WRK-ACUM-ED.
               COMPUTE WRK-MEDIA = WRK-ACUM / WRK-VENDAS.
             DISPLAY '-------------------------------'.  
             DISPLAY ' FIM DE PROCESSAMENTO '.

       0400-ENTRADA-DADOS.
            DISPLAY 'DIGITE O NUMERO..... : '.
            ACCEPT WRK-VENDAS.
