*&---------------------------------------------------------------------*
*& Report Z02_12
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_12.

* 구조체 타입 선언
TYPES: BEGIN OF T_REN,
  NAME  TYPE C LENGTH 20,
  COUNTRY TYPE C LENGTH 15,
  CITY  TYPE C LENGTH 10,
  END OF T_REN.

*구조체 변수 선언.
DATA GS_PEOPLE TYPE T_REN.

GS_PEOPLE-NAME = 'LEE HYOJUN'.
GS_PEOPLE-COUNTRY = 'KOREA'.
GS_PEOPLE-CITY = 'SEOUL'.

WRITE :/ GS_PEOPLE-NAME, GS_PEOPLE-COUNTRY, GS_PEOPLE-CITY.
