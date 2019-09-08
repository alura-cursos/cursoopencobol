       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB08-1.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = COMANDO EVALUATE - EXEMPLO MEDIA
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
        PROCEDURE DIVISION.
             ACCEPT WRK-NOTA1.
             ACCEPT WRK-NOTA2.
             COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) /  2.
             DISPLAY '== MEDIA DO ALUNO ======  ' WRK-MEDIA.
             
      *********** DEFINIR STATUS - COMANDO IF *******************
               EVALUATE WRK-MEDIA
                  WHEN 10 
                   DISPLAY 'APROV. BONUS '
                 WHEN 6 THRU 9 
                   DISPLAY 'APROVADO '  
                 WHEN 3 THRU 5
                   DISPLAY  'RECUPERACAO '  
                 WHEN OTHER
                   DISPLAY  'REPROVADO '                 
               END-EVALUATE.
               
       
           STOP RUN.
