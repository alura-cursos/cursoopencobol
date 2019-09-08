       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB13.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = OPERADORES RELACIONAIS AND E OR
      ***                          OPERADORES GREATER / LESS
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-LARGURA       PIC 9(03)V99     VALUE ZEROS.
       77 WRK-COMPRIMENTO   PIC 9(03)V99     VALUE ZEROS.       
       77 WRK-AREA          PIC 9(03)V99     VALUE ZEROS.
        PROCEDURE DIVISION.
           DISPLAY 'DIGITE A LARGURA..... : '.
             ACCEPT WRK-LARGURA.
           DISPLAY 'DIGITE O COMPRIMENTO. : '.
             ACCEPT WRK-COMPRIMENTO.
           IF WRK-LARGURA > 0 AND WRK-COMPRIMENTO > 0 
             COMPUTE WRK-AREA = WRK-LARGURA * WRK-COMPRIMENTO              
             DISPLAY  '--------- SAIDA DE DADOS ------------'
              DISPLAY 'AREA.......  : ' WRK-AREA
            ELSE  
                DISPLAY 'NENHUM VALOR PODE SER = 0 '
           END-IF.     
           
           STOP RUN.
