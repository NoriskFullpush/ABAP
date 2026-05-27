*&---------------------------------------------------------------------*
*& Report Z02_21
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_21.

TYPES: BEGIN OF T_EMP,
  EMPCK TYPE ZEMPLIST-EMPCK,
  ENAME TYPE ZEMPLIST-ENAME,
  END OF T_EMP.

DATA: GS_EMP TYPE T_EMP.

DATA: BEGIN OF GS_EMPINFO.
  INCLUDE STRUCTURE GS_EMP.
 DATA EMAIL TYPE ZEMPLIST-EMAIL VALUE 'sapjoy@naver'.
 DATA : END OF GS_EMPINFO.

SELECT SINGLE EMPCK, ENAME INTO (@GS_EMP-EMPCK, @GS_EMP-ENAME)
  FROM ZEMPLIST
  WHERE ENAME = '김철수'.

 MOVE-CORRESPONDING GS_EMP TO GS_EMPINFO.
 WRITE : / GS_EMPINFO-EMPCK, GS_EMPINFO-ENAME, GS_EMPINFO-EMAIL.
