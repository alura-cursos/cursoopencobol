       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB02.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS 
      ***   OBJETIVO DO PROGRAMA = RECEBER E IMPRIMIR UMA STRING
      ***   UTILIZAR VARIAVEIS NIVEL 77
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************      
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOME         PICTURE X(30) VALUE SPACES.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY  '------------------------'.
           DISPLAY  'NOME.. '  WRK-NOME(1:30).
           STOP RUN.
