*&---------------------------------------------------------------------*
*& Report YTEST02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT YTEST02 NO STANDARD PAGE HEADING.

DATA CUR_TEST TYPE D.
DATA HOUR TYPE P DECIMALS 3.

CUR_TEST = '1000.00'.

WRITE: 'HELLO', '안녕'.
WRITE: 'HELLO' NO-GAP, '안녕'.
ULINE.
WRITE AT 10(5) SY-ULINE.
WRITE / SY-ULINE+0(10).

HOUR = '1.230000'.
WRITE /(10) HOUR UNIT 'STD'. "1.23
HOUR = '1.239560'.
WRITE /(10) HOUR UNIT 'STD'. "1.240

ULINE.
"일자
DATA: S_TST TYPE TIMESTAMP,
      L_TST TYPE TIMESTAMPL.
SET COUNTRY 'KO'.
GET TIME STAMP FIELD S_TST.
GET TIME STAMP FIELD L_TST.

WRITE: / S_TST TIME ZONE 'UTC+9',
       /, L_TST TIME ZONE 'UTC+9',
       /, S_TST TIME ZONE 'UTC+9' DD/MM/YY,
       /, S_TST TIME ZONE 'no tz ' DD/MM/YY.

"예제

ULINE.
FIELD-SYMBOLS <FNAME>.
ASSIGN '이름' TO <FNAME>.
WRITE: /3 '성'(001), 15 <FNAME>, 30 '방번호', 40 '나이'(002).
ULINE.
WRITE: / '이 ' UNDER '성'(001),
          '효준'  UNDER <FNAME>,
           '5-1'   UNDER '방번호',
           (10)24   UNDER TEXT-002.
SKIP.
ULINE.
DATA: L_ALIGN(10) TYPE C VALUE '정렬'.
WRITE: / L_ALIGN LEFT-JUSTIFIED,
       / L_ALIGN CENTERED,
       / L_ALIGN RIGHT-JUSTIFIED.
