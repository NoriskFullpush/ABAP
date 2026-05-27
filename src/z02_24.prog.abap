*&---------------------------------------------------------------------*
*& Report Z02_24
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_24.

DATA : gv_result TYPE i.

PERFORM call_subr.
PERFORM call_subr.

FORM call_subr.
  DATA lv_val TYPE i.

  lv_val = lv_val + 1.

  WRITE :/ 'Local Variable:', lv_val.

 ENDFORM.
