*&---------------------------------------------------------------------*
*& Report YTEST_DD1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ytest_dd1.

START-OF-SELECTION.
  SELECT matnr
    UP TO 10 ROWS
    FROM mara
    INTO TABLE @DATA(lt_mara).
  IF sy-subrc = 0.
    cl_demo_output=>display( lt_mara ).
  ENDIF.
