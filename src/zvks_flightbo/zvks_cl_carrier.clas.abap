CLASS zvks_cl_carrier DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES:
      lty_t_carrier TYPE STANDARD TABLE OF zvks_carrier WITH DEFAULT KEY.

    METHODS:
      get_carrier_data RETURNING VALUE(rt_carrier) TYPE lty_t_carrier,
      set_carrier_data RETURNING VALUE(rt_carrier) TYPE lty_t_carrier.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZVKS_CL_CARRIER IMPLEMENTATION.


  METHOD get_carrier_data.

    rt_carrier = VALUE #(
    ( client = sy-mandt carrier_id ='AA' name ='American Airlines Inc.' currency_code ='USD' )
    ( client = sy-mandt carrier_id ='AC' name ='Air Canada' currency_code ='CAD' )
    ( client = sy-mandt carrier_id ='AF' name ='Air France' currency_code ='EUR' )
    ( client = sy-mandt carrier_id ='AZ' name ='Alitalia Societa Aerea Italiana S.p.A.' currency_code ='EUR' )
    ( client = sy-mandt carrier_id ='BA' name ='British Airways p.l.c.' currency_code ='GBP' )
    ( client = sy-mandt carrier_id ='FJ' name ='Air Pacific Limited t/a Fiji Airway' currency_code ='USD' )
    ( client = sy-mandt carrier_id ='CO' name ='Cobaltair Ltd. dba Cobalt' currency_code ='USD' )
    ( client = sy-mandt carrier_id ='DL' name ='Delta Air Lines, Inc.' currency_code ='USD' )
    ( client = sy-mandt carrier_id ='LH' name ='Deutsche Lufthansa AG' currency_code ='EUR' )
    ( client = sy-mandt carrier_id ='NG' name ='AL-Naser Wings' currency_code ='EUR' )
    ( client = sy-mandt carrier_id ='JL' name ='Japan Airlines Co., Ltd.' currency_code ='JPY' )
    ( client = sy-mandt carrier_id ='QF' name ='Qantas Airways Ltd.' currency_code ='AUD' )
    ( client = sy-mandt carrier_id ='SA' name ='South African Airways' currency_code ='ZAR' )
    ( client = sy-mandt carrier_id ='SQ' name ='Singapore Airlines Limited' currency_code ='SGD' )
    ( client = sy-mandt carrier_id ='SR' name ='Sundair GmbH' currency_code ='CHF' )
    ( client = sy-mandt carrier_id ='UA' name ='United Airlines, Inc.' currency_code ='USD' )
    ).

    "Blank UUID   000000000000000000000000000000 00
    "carrier UUID 000000000000000000000000000000 01

    GET TIME STAMP FIELD DATA(lv_utc_tstmp).

    LOOP AT rt_carrier ASSIGNING FIELD-SYMBOL(<lfs_carrier>).
      <lfs_carrier>-carrier_uuid = |000000000000000000000000000000{ sy-tabix WIDTH = 2 PAD = '0' ALIGN = RIGHT }|.
      <lfs_carrier>-created_at   = lv_utc_tstmp.
      <lfs_carrier>-created_by   = sy-uname.
    ENDLOOP.

  ENDMETHOD.


  METHOD set_carrier_data.

    DELETE FROM zvks_carrier.
    COMMIT WORK AND WAIT.

    rt_carrier = me->get_carrier_data( ).

    IF rt_carrier IS NOT INITIAL.
      INSERT zvks_carrier FROM TABLE @rt_carrier.
      COMMIT WORK AND WAIT.
    ENDIF.

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    DATA(lt_carrier) = me->get_carrier_data( ).
    out->write( lt_carrier ).
  ENDMETHOD.
ENDCLASS.
