*&---------------------------------------------------------------------*
*& Report Z01_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z01_05.

TYPES: BEGIN OF ts_test,
  empck TYPE zemplist-empck,
  ename TYPE zemplist-ename,
  depcd TYPE zemplist-depcd,
  dname TYPE zteamlist-dname,
  relation TYPE zfamily-relation,
  fname TYPE zfamily-fname,
  boate TYPE zfamily-boate,
  rel_desc TYPE dd07t-ddtext,
  END OF ts_test.

DATA gt_test TYPE TABLE OF ts_test.

TABLES zemplist.
SELECT-OPTIONS s_empck FOR zemplist-empck.

SELECT a~empck, a~ename, a~depcd, b~dname, c~relation, c~fname, c~boate, d~ddtext AS rel_desc
  FROM zemplist AS a
  INNER JOIN zteamlist AS b
    ON b~depcd EQ a~depcd
  LEFT OUTER JOIN zfamily AS c
    ON c~empcd EQ a~empck
  LEFT OUTER JOIN dd07t AS d
    ON c~relation EQ d~domvalue_l
  AND d~domname EQ 'ZDRELATION'
  WHERE a~empck IN @s_empck
  INTO TABLE @gt_test.

cl_demo_output=>display( gt_test ).
