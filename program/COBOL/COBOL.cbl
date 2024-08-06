       IDENTIFICATION DIVISION.                                         COBOL (GnuCOBOL(Fixed) 3.1.2)
       PROGRAM-ID. MAIN.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WORK-AREA.
       03 disp PIC Z(3).
       03 I PIC 999.
       PROCEDURE DIVISION.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 100
               IF FUNCTION MOD(I, 15) = 0
                   DISPLAY "FizzBuzz"
               ELSE IF FUNCTION MOD(I, 3) = 0
                   DISPLAY "Fizz"
               ELSE IF FUNCTION MOD(I, 5) = 0
                   DISPLAY "Buzz"
               ELSE
                   COMPUTE disp = I
                   DISPLAY disp
               END-IF
           END-PERFORM.
           STOP RUN.
       END PROGRAM MAIN.
