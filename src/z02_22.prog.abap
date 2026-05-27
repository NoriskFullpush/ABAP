*&---------------------------------------------------------------------*
*& Report Z02_22
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z02_22.

CONSTANTS: c_company(10) VALUE ' HANA '.

CONSTANTS: BEGIN OF c_str,
            name1(20) VALUE ' EASY',
            name2(10) VALUE 'ABAP',
          END OF c_str.

WRITE : c_company, c_str-name1, c_str-name2.
