       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB03.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS 
      ***   OBJETIVO DO PROGRAMA = RECEBER E IMPRIMIR DATA DO SISTEMA
      ***   UTILIZAR VARIAVEIS NIVEL 01.02... (ESTRUTURADAS)
      ***   CONCEITOS E USO DE ENDERECAMENTO DE MEMORIA
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************      
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WRK-DATA.
           02 WRK-ANO        PIC 9(04) VALUE ZEROS.
           02 WRK-MES        PIC 9(02) VALUE ZEROS.
           02 WRK-DIA        PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       ACCEPT WRK-DATA FROM DATE YYYYMMDD.
       DISPLAY  '------------------------'.
       DISPLAY  'DATA ATUAL: ' WRK-DIA ' DE ' WRK-MES ' DE ' WRK-ANO.
       STOP RUN.
