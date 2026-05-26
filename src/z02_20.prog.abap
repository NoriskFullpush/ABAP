*&---------------------------------------------------------------------*
*& Report Z02_20
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_20.

DATA GT_LIST TYPE TABLE OF ZSEMP.
DATA : GO_ALV TYPE REF TO CL_SALV_TABLE,
       GO_ALV_EXC TYPE REF TO CX_SALV_MSG.

SELECT *
  FROM ZEMPLIST
  INTO CORRESPONDING FIELDS OF TABLE @GT_LIST
  WHERE EMPCK >= '1001'.
TRY.
  CL_SALV_TABLE=>FACTORY(
          IMPORTING R_SALV_TABLE = GO_ALV
          CHANGING T_TABLE = GT_LIST ).

  GO_ALV->DISPLAY( ).
  CATCH CX_SALV_MSG INTO GO_ALV_EXC.
    MESSAGE GO_ALV_EXC TYPE 'I' DISPLAY LIKE 'E'.
    ENDTRY.
