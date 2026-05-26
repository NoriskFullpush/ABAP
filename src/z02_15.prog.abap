*&---------------------------------------------------------------------*
*& Report Z02_15
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_15.

DATA: BEGIN OF GS_REN,
  NAME  TYPE C LENGTH 20,
  COUNTRY TYPE C LENGTH 15,
  CITY TYPE C LENGTH 10,
  END OF GS_REN.

DATA: BEGIN OF GS_PP.
  INCLUDE STRUCTURE GS_REN AS REN.
DATA: PHONE TYPE C LENGTH 15,
  END OF GS_PP.

GS_PP-REN-NAME = 'LEE HYOJUN'.
GS_PP-REN-COUNTRY = 'KOREA'.
GS_PP-REN-CITY = 'SEOUL'.
GS_PP-PHONE = '010-1234-5678'.

WRITE :/ GS_PP-REN-NAME, GS_PP-REN-COUNTRY, GS_PP-REN-CITY, GS_PP-PHONE.
