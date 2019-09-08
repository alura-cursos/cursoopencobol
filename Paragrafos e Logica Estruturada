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
            IF WRK-NOTA1 > 0 and WRK-NOTA2 > 0 
              PERFORM 0200-PROCESSAR
            END-IF.

            STOP RUN.
            
       0100-INICIALIZAR.     
            ACCEPT WRK-NOTA1.
            ACCEPT WRK-NOTA2.
            
       0200-PROCESSAR.
            COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) /  2.
             DISPLAY '== MEDIA DO ALUNO ======  ' WRK-MEDIA.
              IF WRK-MEDIA >= 06 
                DISPLAY 'APROVADO' 
                  ELSE  
                      IF WRK-MEDIA >= 02 
                          DISPLAY 'RECUPERACAO'  
                      ELSE 
                          DISPLAY 'REPROVADO'  
                      END-IF
              END-IF.
       
       0300-FINALIZAR.
            DISPLAY '-------------------'.
            DISPLAY 'FINAL DE PROCESSAMENTO'.
