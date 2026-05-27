*&---------------------------------------------------------------------*
*& Report Z02_23
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_23.

PERFORM call_subr.
PERFORM call_subr.

FORM call_subr.
  STATICS lv_val TYPE i.

  lv_val = lv_val + 1.

  WRITE :/ 'STATIC Variable:', lv_val.

ENDFORM.
