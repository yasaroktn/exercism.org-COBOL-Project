       IDENTIFICATION DIVISION.
       PROGRAM-ID. LEAP.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        77 WS-YEAR   PIC 9(4).
        77 WS-RESULT PIC 9.
        77 SONUC     PIC 99.
        77 KALAN1     PIC 99.
        77 KALAN2     PIC 99.
        77 KALAN3     PIC 999.
       PROCEDURE DIVISION.
       LEAP.
           DIVIDE 4 INTO WS-YEAR GIVING SONUC
                               REMAINDER KALAN1
           DIVIDE 100 INTO WS-YEAR GIVING SONUC
                               REMAINDER KALAN2
           DIVIDE 400 INTO WS-YEAR GIVING SONUC
                               REMAINDER KALAN3
           IF (KALAN1 = 0 AND KALAN2 NOT = 0) OR KALAN3 = 0
              MOVE 1 TO WS-RESULT
           ELSE
              MOVE 0 TO WS-RESULT
           END-IF.
       LEAP-EXIT.
           EXIT.