       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB11.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = ISNUMERIC/ALPABHETIC
      ***                          USO DO PONTO FINAL NO IF
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO     PIC X(20)     VALUE SPACES.
       01 WRK-NIVEL       PIC 9(02)     VALUE ZEROS.       
           88 ADM         VALUE 01.
           88 USER        VALUE 02.
        PROCEDURE DIVISION.
           DISPLAY 'NOME DO USUARIO..... : '.
             ACCEPT WRK-USUARIO.
             IF WRK-USUARIO IS ALPHABETIC 
                     DISPLAY 'NIVEL............... : '
                       ACCEPT WRK-NIVEL
                 
                     DISPLAY  '--------- SAIDA DE DADOS ------------'
                         IF ADM
                          DISPLAY 'NIVEL - ADMNISTRADOR'
                         ELSE
                              IF USER
                                 DISPLAY 'NIVEL - USUARIO'
                                     ELSE
                                         DISPLAY 'NIVEL NAO ENCONTRADO'
                              END-IF
                        END-IF
                     ELSE 
                    DISPLAY 'DIGITE APENAS LETRAS'
              END-IF.
           STOP RUN.
