       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WORK-AREA.
       03 N PIC 9(3).
       03 K PIC 9(3).
       03 INPUT-LINE PIC X(300).
       03 A OCCURS 100 TIMES PIC X(100).
       03 B OCCURS 100 TIMES PIC 9(3).
       03 disp PIC Z(3).
       03 I PIC 999.
       01 PT PIC 9(3) VALUE 1.

       PROCEDURE DIVISION.
           ACCEPT INPUT-LINE FROM CONSOLE.
           UNSTRING INPUT-LINE DELIMITED BY SPACE
               INTO N K.

           ACCEPT INPUT-LINE FROM CONSOLE.

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N OR I > 100
               UNSTRING INPUT-LINE DELIMITED BY SPACE INTO A(I) 
               WITH POINTER PT
           END-PERFORM.

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N OR I > 100
               MOVE FUNCTION NUMVAL(A(I)) TO B(I)
           END-PERFORM.

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N OR I > 100
               IF FUNCTION MOD(B(I), K) = 0
                   DIVIDE K INTO B(I)
                   COMPUTE disp = B(I) + 0
                   DISPLAY disp
               END-IF
           END-PERFORM.

           STOP RUN.
       END PROGRAM MAIN.
