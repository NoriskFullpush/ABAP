*&---------------------------------------------------------------------*
*& Report Z01_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z01_01.

DATA gv_ename TYPE zemplist-ename.

SELECT SINGLE ename FROM zemplist
  WHERE empck EQ '1001'
  INTO @gv_ename.

WRITE gv_ename.

PARAMETERS: p_empck TYPE zemplist-empck.

SELECT SINGLE ename
  FROM zemplist
  WHERE empck = @p_empck
  INTO @gv_ename.
