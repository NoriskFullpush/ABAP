*&---------------------------------------------------------------------*
*& Report Z02_16
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_16.

DATA: BEGIN OF GS_REN,
  NAME  TYPE C LENGTH 20,
  COUNTRY TYPE C LENGTH 15,
  CITY  TYPE C LENGTH 10,
  END OF GS_REN.

DATA: BEGIN OF GS_PP.
  INCLUDE STRUCTURE GS_REN.
 DATA: PHONE TYPE C LENGTH 15,
  END OF GS_PP.

GS_PP-NAME = 'LEE HYOJUN'.
GS_PP-COUNTRY = 'KOREA'.
GS_PP-CITY = 'SEOUL'.
GS_PP-PHONE = '010-1234-5678'.

WRITE :/ GS_PP-NAME, GS_PP-COUNTRY, GS_PP-CITY, GS_PP-PHONE.
