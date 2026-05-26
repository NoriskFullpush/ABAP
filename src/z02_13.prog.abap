*&---------------------------------------------------------------------*
*& Report Z02_13
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_13.

* 구조체 타입 선언
TYPES : BEGIN OF T_REN,
  NAME  TYPE C LENGTH 20,
  COUNTRY TYPE C LENGTH 15,
  CITY  TYPE C LENGTH 10,
  END OF T_REN.

* nested 구조체 타입 선언
TYPES: BEGIN OF T_INFO.
  INCLUDE TYPE T_REN AS REN.
  TYPES : PHONE TYPE C LENGTH 15,
  END OF T_INFO.

* 구조체 오브젝트 선언
DATA GS_PP TYPE T_INFO.

GS_PP-REN-NAME = 'LEE HYOJUN'.
GS_PP-REN-COUNTRY = 'KOREA'.
GS_PP-REN-CITY = 'SEOUL'.
GS_PP-PHONE = '010-1234-9221'.

WRITE :/ GS_PP-REN-NAME, GS_PP-REN-COUNTRY, GS_PP-REN-CITY, GS_PP-PHONE.
