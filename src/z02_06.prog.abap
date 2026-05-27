*&---------------------------------------------------------------------*
*& Report Z02_06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_06.

DATA GV_F0.
DATA GV_F1  TYPE C.
DATA GV_F2(1) TYPE C.
DATA GV_F3(2) TYPE C.
DATA GV_F4  TYPE C LENGTH 2.
DATA GV_F5(5).

GV_F0 = 'KOREA'.
GV_F1 = 'KOREA'.
GV_F2 = 'KOREA'.
GV_F3 = 'KOREA'.
GV_F4 = 'KOREA'.
GV_F5 = 'KOREA'.

WRITE :/ GV_F0,
       / GV_F1,
       / GV_F2,
       / GV_F3,
       / GV_F4,
       / GV_F5.

DATA(GV_LEN) = STRLEN( GV_F5 ).
WRITE / GV_LEN.

DATA GV_VAL TYPE C LENGTH 20.
DATA(GV_VAL1) = 'ABAP'.

GV_VAL = | HELLO { GV_VAL1 } |.
WRITE :/ GV_VAL.
