       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB20-1.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = TABELA DE MEMORIA (OCCURS)
      ***                          REDEFINES
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-MES-EXTENSO.
          02 FILLER PIC X(09) VALUE 'JANEIRO  '.
          02 FILLER PIC X(09) VALUE 'FEVEREIRO'.          
          02 FILLER PIC X(09) VALUE 'MARCO    '.
          02 FILLER PIC X(09) VALUE 'ABRIL    '.          
          02 FILLER PIC X(09) VALUE 'MAIO     '.
          02 FILLER PIC X(09) VALUE 'JUNHO    '.          
          02 FILLER PIC X(09) VALUE 'JULHO    '.
          02 FILLER PIC X(09) VALUE 'AGOSTO   '.          
          02 FILLER PIC X(09) VALUE 'SETEMBRO '.
          02 FILLER PIC X(09) VALUE 'OUTUBRO  '.          
          02 FILLER PIC X(09) VALUE 'NOVEMBRO '.
          02 FILLER PIC X(09) VALUE 'DEZEMBRO '.          
          02 FILLER PIC X(09) VALUE 'JAN'.
       01 WRK-MESES REDEFINES WRK-MES-EXTENSO.
               03 WRK-MES PIC X(9) OCCURS 12 TIMES.
       01 DATA-SYSTEMA.   
           02 SYS-ANO  PIC 9(4).
           02 SYS-MES  PIC 9(2).
           02 SYS-DIA  PIC 9(2).
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
            PERFORM 0100-INICIALIZAR.
            PERFORM 0200-PROCESSAR.
            PERFORM 0300-FINALIZAR
            STOP RUN.
       0100-INICIALIZAR.     
            ACCEPT DATA-SYSTEMA FROM DATE YYYYMMDD.
       0200-PROCESSAR.
            DISPLAY SYS-DIA ' DE ' WRK-MES(SYS-MES)  ' DE ' SYS-ANO.
            
       0300-FINALIZAR.     
             DISPLAY ' FIM DE PROCESSAMENTO '.
