CLASS zvks_cl_connection DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES:
      lty_t_connection TYPE STANDARD TABLE OF zvks_connection WITH DEFAULT KEY.

    METHODS:
      get_connection_data RETURNING VALUE(rt_connection) TYPE lty_t_connection,
      set_connection_data RETURNING VALUE(rt_connection) TYPE lty_t_connection.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZVKS_CL_CONNECTION IMPLEMENTATION.


  METHOD get_connection_data.

    rt_connection = VALUE #(
    ( client = sy-mandt connection_id ='0001' carrier_uuid ='14' airport_from_uuid ='37' airport_to_uuid ='38' departure_time ='011500' arrival_time ='115000' distance = 13523 )
    ( client = sy-mandt connection_id ='0002' carrier_uuid ='14' airport_from_uuid ='38' airport_to_uuid ='37' departure_time ='063000' arrival_time ='091500' distance = 13523 )
    ( client = sy-mandt connection_id ='0011' carrier_uuid ='14' airport_from_uuid ='34' airport_to_uuid ='38' departure_time ='145500' arrival_time ='205000' distance = 5363  )
    ( client = sy-mandt connection_id ='0012' carrier_uuid ='14' airport_from_uuid ='38' airport_to_uuid ='34' departure_time ='095300' arrival_time ='175400' distance = 5363  )
    ( client = sy-mandt connection_id ='0058' carrier_uuid ='16' airport_from_uuid ='37' airport_to_uuid ='12' departure_time ='134500' arrival_time ='095500' distance = 9608  )
    ( client = sy-mandt connection_id ='0059' carrier_uuid ='16' airport_from_uuid ='12' airport_to_uuid ='37' departure_time ='135500' arrival_time ='163000' distance = 9608  )
    ( client = sy-mandt connection_id ='1537' carrier_uuid ='16' airport_from_uuid ='10' airport_to_uuid ='32' departure_time ='215600' arrival_time ='124700' distance = 1752  )
    ( client = sy-mandt connection_id ='0322' carrier_uuid ='01' airport_from_uuid ='32' airport_to_uuid ='10' departure_time ='201700' arrival_time ='231900' distance = 1752  )
    ( client = sy-mandt connection_id ='0017' carrier_uuid ='01' airport_from_uuid ='32' airport_to_uuid ='16' departure_time ='071900' arrival_time ='080300' distance = 520   )
    ( client = sy-mandt connection_id ='2678' carrier_uuid ='01' airport_from_uuid ='16' airport_to_uuid ='32' departure_time ='061500' arrival_time ='103000' distance = 520   )
    ( client = sy-mandt connection_id ='0015' carrier_uuid ='01' airport_from_uuid ='22' airport_to_uuid ='37' departure_time ='071300' arrival_time ='100400' distance = 4156  )
    ( client = sy-mandt connection_id ='0018' carrier_uuid ='01' airport_from_uuid ='37' airport_to_uuid ='22' departure_time ='064000' arrival_time ='150600' distance = 4156  )
    ( client = sy-mandt connection_id ='0400' carrier_uuid ='09' airport_from_uuid ='12' airport_to_uuid ='22' departure_time ='101000' arrival_time ='113400' distance = 6162  )
    ( client = sy-mandt connection_id ='0401' carrier_uuid ='09' airport_from_uuid ='22' airport_to_uuid ='12' departure_time ='183000' arrival_time ='074500' distance = 6162  )
    ( client = sy-mandt connection_id ='0402' carrier_uuid ='09' airport_from_uuid ='12' airport_to_uuid ='10' departure_time ='133000' arrival_time ='153500' distance = 6217  )
    ( client = sy-mandt connection_id ='0403' carrier_uuid ='09' airport_from_uuid ='10' airport_to_uuid ='12' departure_time ='180900' arrival_time ='073000' distance = 6217  )
    ( client = sy-mandt connection_id ='0407' carrier_uuid ='11' airport_from_uuid ='34' airport_to_uuid ='12' departure_time ='132300' arrival_time ='155600' distance = 9379  )
    ( client = sy-mandt connection_id ='0408' carrier_uuid ='11' airport_from_uuid ='12' airport_to_uuid ='34' departure_time ='202500' arrival_time ='154000' distance = 9379  )
    ( client = sy-mandt connection_id ='0788' carrier_uuid ='04' airport_from_uuid ='43' airport_to_uuid ='34' departure_time ='132500' arrival_time ='101300' distance = 9595  )
    ( client = sy-mandt connection_id ='0789' carrier_uuid ='04' airport_from_uuid ='34' airport_to_uuid ='43' departure_time ='142600' arrival_time ='213100' distance = 9595  )
    ).

    "Blank UUID      0000000000000000000000000000 0000
    "connection UUID 0000000000000000000000000000 0001

    GET TIME STAMP FIELD DATA(lv_utc_tstmp).

    LOOP AT rt_connection ASSIGNING FIELD-SYMBOL(<lfs_connection>).
      <lfs_connection>-connection_uuid   = |0000000000000000000000000000{ <lfs_connection>-connection_id }|.
      <lfs_connection>-carrier_uuid      = |000000000000000000000000000000{ <lfs_connection>-carrier_uuid }|.
      <lfs_connection>-airport_from_uuid = |000000000000000000000000000000{ <lfs_connection>-airport_from_uuid }|.
      <lfs_connection>-airport_to_uuid   = |000000000000000000000000000000{ <lfs_connection>-airport_to_uuid }|.

      <lfs_connection>-distance_unit   = 'KM'.
      <lfs_connection>-created_at      = lv_utc_tstmp.
      <lfs_connection>-created_by      = sy-uname.
    ENDLOOP.

  ENDMETHOD.


  METHOD set_connection_data.

    DELETE FROM zvks_connection.
    COMMIT WORK AND WAIT.

    rt_connection = me->get_connection_data( ).

    IF rt_connection IS NOT INITIAL.
      INSERT zvks_connection FROM TABLE @rt_connection.
      COMMIT WORK AND WAIT.
    ENDIF.

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    DATA(lt_connection) = me->get_connection_data( ).
    out->write( lt_connection ).
  ENDMETHOD.
ENDCLASS.
