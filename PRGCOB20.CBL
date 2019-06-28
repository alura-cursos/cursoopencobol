       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB20.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = TABELA DE MEMORIA (OCCURS)
      ***                          VARIAVEL TIPO ARRAY
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES.
               02 WRK-MES PIC X(9) OCCURS 12 TIMES.
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
            PERFORM 0400-MONTAMES.
       0200-PROCESSAR.
            DISPLAY SYS-DIA ' DE ' WRK-MES(SYS-MES)  ' DE ' SYS-ANO.
            
       0300-FINALIZAR.     
             DISPLAY ' FIM DE PROCESSAMENTO '.
             
       0400-MONTAMES.
              MOVE 'JANEIRO  ' TO WRK-MES(01).
              MOVE 'FEVEREIRO' TO WRK-MES(02).         
              MOVE 'MARCO    ' TO WRK-MES(03).
              MOVE 'ABRIL    ' TO WRK-MES(04).          
              MOVE 'MAIO     ' TO WRK-MES(05).
              MOVE 'JUNHO    ' TO WRK-MES(06).         
              MOVE 'JULHO    ' TO WRK-MES(07).
              MOVE 'AGOSTO   ' TO WRK-MES(08).         
              MOVE 'SETEMBRO ' TO WRK-MES(09).
              MOVE 'OUTUBRO  ' TO WRK-MES(10).         
              MOVE 'NOVEMBRO ' TO WRK-MES(11).
              MOVE 'DEZEMBRO ' TO WRK-MES(12).         

