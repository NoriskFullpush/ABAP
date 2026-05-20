*&---------------------------------------------------------------------*
*& Report Z01_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z01_02.

TYPES: BEGIN OF ts_test,
   empck TYPE zemplist-empck,
   ename TYPE zemplist-ename,
   depcd TYPE zemplist-depcd,
  END OF ts_test.

DATA gs_test TYPE ts_test.

SELECT SINGLE empck, ename, depcd
  FROM zemplist
  WHERE empck = '1001'
  INTO @gs_test.

cl_demo_output=>display( gs_test ).
