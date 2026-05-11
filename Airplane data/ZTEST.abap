*&---------------------------------------------------------------------*
*& Report ZTEST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTEST.

DATA text1(20) TYPE c.
DATA text2     TYPE string.
DATA l_num1    TYPE X.


text1 = 'The number'.
l_num1 = 100.
text2 = 'is an hexadecimal.'.

WRITE: text1, l_num1, text2.

DATA: lt_spfli TYPE TABLE OF spfli,
      lo_alv   TYPE REF TO cl_salv_table.

SELECT * FROM spfli INTO TABLE lt_spfli.

TRY.
    cl_salv_table=>factory(
      IMPORTING
        r_salv_table = lo_alv
      CHANGING
        t_table      = lt_spfli ).

    lo_alv->display( ).

CATCH cx_salv_msg INTO DATA(lx_msg).
    MESSAGE lx_msg->get_text( ) TYPE 'E'.
ENDTRY.
