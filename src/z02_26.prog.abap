*&---------------------------------------------------------------------*
*& Report Z02_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_26.

TYPES:
  BEGIN OF struc,
    col1 TYPE i,
    col2 TYPE i,
    END OF struc.

DATA: struc TYPE struc.

DO 5 TIMES.
  DATA(x) = sy-index.
  DATA(y) = x * x.

  struc = VALUE struc(
    LET z = x * 1000 IN col1 = x + z
                        col2 = y + z ).
  WRITE: / 'col1 =', struc-col1, 'col2 =', struc-col2.
ENDDO.
