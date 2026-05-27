*&---------------------------------------------------------------------*
*& Report Z02_07
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_07.
DATA : GV_EMPCD TYPE ZEMPLIST-EMPCK.

SELECT SINGLE EMPCK INTO @GV_EMPCD
  FROM ZEMPLIST
  WHERE EMPCK = '00001'.

CL_DEMO_OUTPUT=>DISPLAY( GV_EMPCD ).

*CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
*  EXPORTING
*    INPUT = GV_EMPCD
*    IMPORTING
*      OUTPUT = GV_EMPCD.

GV_EMPCD = | { GV_EMPCD ALPHA = OUT } |. " ALPHA의 NEW SYNTAX

CL_DEMO_OUTPUT=>DISPLAY( GV_EMPCD ).


DATA GV_TEXT TYPE C LENGTH 10.

GV_TEXT = |{ 12345678 CURRENCY = 'KRW' }|.
WRITE GV_TEXT.

GV_TEXT = |{ 12345678 CURRENCY = 'USD' }|.
WRITE GV_TEXT.
