*&---------------------------------------------------------------------*
*& Report YTEST11
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT YTEST11 NO STANDARD PAGE HEADING.

DATA :  GV_STR1 TYPE c,
        GV_STR2(10) TYPE c,
        GV_STR3 TYPE c LENGTH 10,
        GV_DATE1 TYPE d,
        GV_DATE2 TYPE d,
        GV_DEC1 TYPE p DECIMALS 2,
        GV_INT1 TYPE i  VALUE 1000,
        GV_DEC2 TYPE P.

DATA :  GV_STR4 LIKE GV_STR2.

GV_STR1 = 'ABCDE'.
GV_STR2 = 'ABCDE'.
GV_STR3 = 'ABCDEF'.
GV_STR4 = GV_STR3.

GV_DEC1  = '100.10'.
GV_DEC2  = GV_DEC1.

GV_DATE1 = SY-DATUM.
GV_DATE2 = SY-DATUM.

WRITE / GV_STR1.
WRITE / GV_STR2.
WRITE / GV_STR3.
WRITE / GV_STR4.
ULINE.
WRITE / GV_DEC1.
WRITE / GV_DEC2.
WRITE / GV_INT1.
SKIP.
WRITE / GV_DATE1.
WRITE / GV_DATE2  DD/MM/YYYY.
ULINE.
