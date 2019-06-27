       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB14.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = USO DE PARAGRAFOS 
      ***                          USO DA LOGICA ESTRUTURADA
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1      PIC 9(02)     VALUE ZEROS.
       77 WRK-NOTA2       PIC 9(02)     VALUE ZEROS.       
       77 WRK-MEDIA       PIC 9(02)V9     VALUE ZEROS.
       77 WRK-STATUS      PIC X(12)     VALUE SPACES.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
            PERFORM 0100-INICIALIZAR.
            PERFORM 0200-PROCESSAR.
            PERFORM 0300-FINALIZAR.
            STOP RUN.
       0100-INICIALIZAR.     
            DISPLAY 'DIGITE A PRIMEIRA NOTA..... : '.
            ACCEPT WRK-NOTA1.
            DISPLAY 'DIGITE A SEGUNDA NOTA...... : '.
            ACCEPT WRK-NOTA2.
       0200-PROCESSAR.
            COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) /  2.
       0300-FINALIZAR.     
             DISPLAY  '--------- SAIDA DE DADOS ------------'.
             DISPLAY 'NOTA 1. : ' WRK-NOTA1.
             DISPLAY 'NOTA 2. : ' WRK-NOTA2.
             DISPLAY '== MEDIA DO ALUNO ======  ' WRK-MEDIA.
