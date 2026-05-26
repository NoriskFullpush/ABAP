*&---------------------------------------------------------------------*
*& Report Z02_18
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_18.

DATA: GV_EMPCK TYPE ZEMPLIST-EMPCK,
      GV_ENAME TYPE ZEMPLIST-ENAME,
      GV_EMAIL TYPE ZEMPLIST-EMAIL.

GV_EMPCK = '1001'.
GV_ENAME = '김철수'.
GV_EMAIL = 'sapjoy@naver.com'.

WRITE : GV_EMPCK, GV_ENAME, GV_EMAIL.
