*&---------------------------------------------------------------------*
*& Report Z02_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_05.

*TRY.
*  DATA(GV_RES) = 5 / 0.
*  CATCH CX_ROOT INTO DATA(GO_REF).
*    DATA(GV_MSG) = GO_REF->GET_TEXT( ).
*    ENDTRY.
*    WRITE GV_MSG.

DATA GO_REF TYPE REF TO CX_ROOT.
DATA GV_MSG TYPE STRING.
TRY.
  DATA(GV_RES) = 100000 * 100000.

  CATCH CX_SY_ZERODIVIDE INTO GO_REF.
    GV_MSG = GO_REF->GET_TEXT( ).
    CATCH CX_SY_ARITHMETIC_OVERFLOW INTO GO_REF.
      GV_MSG = GO_REF->GET_TEXT( ).
   ENDTRY.

WRITE GV_MSG.
