*&---------------------------------------------------------------------*
*& Report YTEST01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT YTEST01 NO STANDARD PAGE HEADING.

DATA: WORD(20) VALUE '1234567890123456780',
      COL TYPE I VALUE 5,
      LEN TYPE I VALUE 10.

WRITE AT / WORD.        "전체 출력
WRITE AT /.
WRITE AT /5 WORD.        "5번째 칸 부터 출력
WRITE AT /.
WRITE AT /(10)  WORD.     "10자리만 출력
WRITE AT /.
WRITE AT /5(10) WORD.       "5번째 칸 부터 10자리만 출력
WRITE AT /.
WRITE AT /COL WORD.        "col 변수 길이인 5번째 칸 부터 출력
WRITE AT /.
WRITE AT /(LEN)  WORD.       "len 변수 길이인 10자리만 출력
WRITE AT /.
WRITE AT /COL(LEN)  WORD.    "변수의 5번째 칸 부터 10자리만 출력