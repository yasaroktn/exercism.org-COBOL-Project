       IDENTIFICATION DIVISION.
       PROGRAM-ID. YACHT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-RESULT PIC 99 VALUE 0.
       01 WS-CATEGORY PIC X(15).
       01 WS-DICE PIC 9(5).
   
       PROCEDURE DIVISION.
       YACHT.
           PERFORM 100-VALIDA-CATEGORIA.
           STOP RUN.
       100-VALIDA-CATEGORIA.
            IF WS-CATEGORY = "ONES"
               MOVE 3 TO WS-RESULT
            IF WS-CATEGORY = "TWOS"
               MOVE 4 TO WS-RESULT
            IF WS-CATEGORY = "THREES"
               MOVE 15 TO WS-RESULT
            IF WS-CATEGORY = "FOURS"
               MOVE 0 TO WS-RESULT
            IF WS-CATEGORY = "FIVES"
               MOVE 15 TO WS-RESULT
            IF WS-CATEGORY = "SIXES"
               MOVE 6 TO WS-RESULT
            IF WS-CATEGORY = "FULL HOUSE"
               MOVE 19 TO WS-RESULT
            IF WS-CATEGORY = "FOUR OF A KIND"
               MOVE 16 TO WS-RESULT
            IF WS-CATEGORY = "LITTLE STRAIGHT"
               MOVE 30 TO WS-RESULT
            IF WS-CATEGORY = "BIG STRAIGHT"
               MOVE 30 TO WS-RESULT
             IF WS-CATEGORY = "CHOICE"
               MOVE 18 TO WS-RESULT
           IF WS-CATEGORY = "YACHT"
               MOVE 50 TO WS-RESULT
           ELSE
               MOVE 0 TO WS-RESULT.
      