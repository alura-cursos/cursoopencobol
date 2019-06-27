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
           IF WRK-LARGURA GREATER 0 AND WRK-COMPRIMENTO GREATER 0 
              
             DISPLAY  '--------- SAIDA DE DADOS ------------'
             DISPLAY 'LARGURA..... : ' WRK-LARGURA
             DISPLAY 'COMPRIMENTO. : ' WRK-COMPRIMENTO
             COMPUTE WRK-AREA = WRK-LARGURA * WRK-COMPRIMENTO
             DISPLAY 'AREA.......  : ' WRK-AREA
           
           ELSE  
                DISPLAY 'NENHUM VALOR PODE SER = 0 '
           END-IF.     
           
           STOP RUN.
