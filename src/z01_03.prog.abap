*&---------------------------------------------------------------------*
*& Report Z01_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z01_03.

TYPES: BEGIN OF ts_test,
  empck TYPE zemplist-empck,
  ename TYPE zemplist-ename,
  depcd TYPE zemplist-depcd,
  END OF ts_test.

DATA gt_test TYPE TABLE OF ts_test.

TABLES: zemplist.
SELECT-OPTIONS s_empck
FOR zemplist-empck.

SELECT empck, ename, depcd
  FROM zemplist
  WHERE empck IN @s_empck
  INTO TABLE @gt_test.

cl_demo_output=>display( gt_test ).
