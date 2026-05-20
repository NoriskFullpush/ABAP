*&---------------------------------------------------------------------*
*& Report Z01_04
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z01_04.

TYPES: BEGIN OF ts_test,
  empck TYPE zemplist-empck,
  ename TYPE zemplist-ename,
  depcd TYPE zemplist-depcd,
  dname TYPE zteamlist-dname,
  END OF ts_test.

DATA gt_test TYPE TABLE OF ts_test.

TABLES zemplist.
SELECT-OPTIONS s_empck FOR zemplist-empck.

SELECT a~empck, a~ename, a~depcd, b~dname
  FROM zemplist AS a
  INNER JOIN zteamlist AS b
    ON b~depcd EQ a~depcd
  WHERE empck in @s_empck
  INTO TABLE @gt_test.

cl_demo_output=>display( gt_test ).
