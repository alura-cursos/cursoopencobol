       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB08.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = COMANDO EVALUATE
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-PRODUTO     PIC X(20)     VALUE SPACES.
       77 WRK-VALOR       PIC 9(06)V99  VALUE ZEROS.       
       77 WRK-UF          PIC X(02)     VALUE 'SP'.
       77 WRK-FRETE       PIC 9(04)V99  VALUE ZEROS.
        PROCEDURE DIVISION.
            DISPLAY 'PRODUTO COMPRADO..... : '. 
              ACCEPT WRK-PRODUTO. 
            DISPLAY 'VALOR DO PRODUTO...... : '.
             ACCEPT WRK-VALOR.
            DISPLAY 'ESTADO DE ENTREGA (SP/RJ/MG).. : '.
             ACCEPT WRK-UF.

             DISPLAY  '--------- SAIDA DE DADOS --------------------'.
             DISPLAY 'PRODUTO... : ' WRK-PRODUTO.
             DISPLAY 'VALOR..... : ' WRK-VALOR.
             DISPLAY 'ESTADO.... : ' WRK-UF.
             
      *********** OPERACAO CALCULO FRETE - COMANDO EVALUATE ***********   
              EVALUATE WRK-UF
                 WHEN 'SP'
                   COMPUTE WRK-FRETE = WRK-VALOR * 0,10
                 WHEN 'RJ'
                   COMPUTE WRK-FRETE = WRK-VALOR * 0,15
                 WHEN 'MG'
                   COMPUTE WRK-FRETE = WRK-VALOR * 0,20
                 WHEN OTHER
                    COMPUTE WRK-FRETE = 0 
                END-EVALUATE.
                
               DISPLAY '==========================='.
                   IF WRK-FRETE = 0 
                       DISPLAY 'NAO PODEMOS ENTREGAR NESSE ESTADO'
                   ELSE   
                       DISPLAY 'VALOR DO FRETE   ' WRK-FRETE
                   END-IF.
                   DISPLAY '==========================='.               
           STOP RUN.
