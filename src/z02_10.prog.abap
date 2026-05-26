*&---------------------------------------------------------------------*
*& Report Z02_10
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_10.

DATA : GV_STR TYPE STRING,
      GV_CHR TYPE C LENGTH 10.

GV_STR = 'HANA'.
GV_CHR = 'N'.
FIND GV_CHR IN GV_STR.
IF SY-SUBRC EQ 0.
  WRITE 'N이 발견됨.'.
  ENDIF.

GV_STR = 'HANA'.
GV_CHR = '하나'.
REPLACE 'HA' IN GV_STR WITH GV_CHR.
WRITE / GV_STR.

GV_STR = 'HANA'.
TRANSLATE GV_STR TO LOWER CASE.
WRITE / GV_STR.

GV_STR = 'HANA'.
SHIFT GV_STR. "RIGHT
WRITE / GV_STR.

GV_STR = ' 안 녕 하 세 요 '.
CONDENSE GV_STR NO-GAPS.
WRITE / GV_STR.

GV_STR = 'H A N A'.
GV_CHR = '  1 2 3'.
OVERLAY GV_STR WITH GV_CHR.
WRITE / GV_STR.

GV_STR = 'HA'.
GV_CHR = 'NA'.
CONCATENATE GV_STR GV_CHR INTO GV_STR.
WRITE / GV_STR.

GV_STR = 'HA,NA'.
SPLIT GV_STR AT ',' INTO GV_STR GV_CHR.
WRITE :/ GV_STR, GV_CHR.

DATA GV_LEN TYPE I.
GV_STR = 'HANA'.
GV_LEN = STRLEN( GV_STR ).
WRITE :/ GV_LEN.
