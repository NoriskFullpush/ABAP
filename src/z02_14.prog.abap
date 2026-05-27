*&---------------------------------------------------------------------*
*& Report Z02_14
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_14.


DATA: BEGIN OF GS_PP,
  NAME  TYPE C LENGTH 20,
  COUNTRY TYPE C LENGTH 15,
  CITY  TYPE C LENGTH 10,
  END OF GS_PP.

 GS_PP-NAME = 'LEE HYOJUN'.
 GS_PP-COUNTRY = 'KOREA'.
 GS_PP-CITY = 'SEOUL'.

 WRITE :/ GS_PP-NAME, GS_PP-COUNTRY, GS_PP-CITY.
