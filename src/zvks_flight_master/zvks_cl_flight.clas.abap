CLASS zvks_cl_flight DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES:
      lty_t_flight TYPE STANDARD TABLE OF zvks_flight WITH DEFAULT KEY.

    METHODS:
      get_flight_data RETURNING VALUE(rt_flight) TYPE lty_t_flight,
      set_flight_data RETURNING VALUE(rt_flight) TYPE lty_t_flight.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZVKS_CL_FLIGHT IMPLEMENTATION.


  METHOD get_flight_data.

    rt_flight = VALUE #(
     ( client = sy-mandt carrier_uuid = '14' connection_uuid = '0001' flight_date = '20230215' price = 10818 currency_code = 'SGD' plane_type_id = '767-200'  seats_max = 260 seats_occupied = 223 )
     ( client = sy-mandt carrier_uuid = '14' connection_uuid = '0001' flight_date = '20220421' price = 5950  currency_code = 'SGD' plane_type_id = 'A340-600' seats_max = 330 seats_occupied = 168 )
     ( client = sy-mandt carrier_uuid = '14' connection_uuid = '0002' flight_date = '20230216' price = 11765 currency_code = 'SGD' plane_type_id = '747-400'  seats_max = 385 seats_occupied = 350 )
     ( client = sy-mandt carrier_uuid = '14' connection_uuid = '0002' flight_date = '20220422' price = 10953 currency_code = 'SGD' plane_type_id = '747-400'  seats_max = 385 seats_occupied = 334 )
     ( client = sy-mandt carrier_uuid = '14' connection_uuid = '0011' flight_date = '20230216' price = 2359  currency_code = 'SGD' plane_type_id = '767-200'  seats_max = 260 seats_occupied = 132 )
     ( client = sy-mandt carrier_uuid = '14' connection_uuid = '0011' flight_date = '20220422' price = 4880  currency_code = 'SGD' plane_type_id = 'A340-600' seats_max = 330 seats_occupied = 310 )
     ( client = sy-mandt carrier_uuid = '14' connection_uuid = '0012' flight_date = '20230218' price = 4665  currency_code = 'SGD' plane_type_id = '767-200'  seats_max = 260 seats_occupied = 236 )
     ( client = sy-mandt carrier_uuid = '14' connection_uuid = '0012' flight_date = '20220424' price = 2574  currency_code = 'SGD' plane_type_id = '747-400'  seats_max = 385 seats_occupied = 215 )
     ( client = sy-mandt carrier_uuid = '16' connection_uuid = '0058' flight_date = '20230213' price = 6629  currency_code = 'USD' plane_type_id = '767-200'  seats_max = 260 seats_occupied = 200 )
     ( client = sy-mandt carrier_uuid = '16' connection_uuid = '0058' flight_date = '20220419' price = 4996  currency_code = 'USD' plane_type_id = '747-400'  seats_max = 385 seats_occupied = 231 )
     ( client = sy-mandt carrier_uuid = '16' connection_uuid = '0059' flight_date = '20230214' price = 4131  currency_code = 'USD' plane_type_id = 'A340-600' seats_max = 330 seats_occupied = 161 )
     ( client = sy-mandt carrier_uuid = '16' connection_uuid = '0059' flight_date = '20220420' price = 6053  currency_code = 'USD' plane_type_id = 'A340-600' seats_max = 330 seats_occupied = 237 )
     ( client = sy-mandt carrier_uuid = '16' connection_uuid = '1537' flight_date = '20230217' price = 893   currency_code = 'USD' plane_type_id = 'A321-200' seats_max = 150 seats_occupied = 88  )
     ( client = sy-mandt carrier_uuid = '16' connection_uuid = '1537' flight_date = '20220423' price = 805   currency_code = 'USD' plane_type_id = '737-800'  seats_max = 140 seats_occupied = 75  )
     ( client = sy-mandt carrier_uuid = '01' connection_uuid = '0322' flight_date = '20230219' price = 1103  currency_code = 'USD' plane_type_id = 'A320-200' seats_max = 130 seats_occupied = 93  )
     ( client = sy-mandt carrier_uuid = '01' connection_uuid = '0322' flight_date = '20220425' price = 1611  currency_code = 'USD' plane_type_id = 'A320-200' seats_max = 130 seats_occupied = 123 )
     ( client = sy-mandt carrier_uuid = '01' connection_uuid = '0017' flight_date = '20230215' price = 462   currency_code = 'USD' plane_type_id = 'A321-200' seats_max = 150 seats_occupied = 139 )
     ( client = sy-mandt carrier_uuid = '01' connection_uuid = '0017' flight_date = '20220421' price = 478   currency_code = 'USD' plane_type_id = '737-800'  seats_max = 140 seats_occupied = 133 )
     ( client = sy-mandt carrier_uuid = '01' connection_uuid = '2678' flight_date = '20230218' price = 473   currency_code = 'USD' plane_type_id = 'A321-200' seats_max = 150 seats_occupied = 141 )
     ( client = sy-mandt carrier_uuid = '01' connection_uuid = '2678' flight_date = '20220424' price = 473   currency_code = 'USD' plane_type_id = 'A320-200' seats_max = 130 seats_occupied = 122 )
     ( client = sy-mandt carrier_uuid = '01' connection_uuid = '0015' flight_date = '20230217' price = 1911  currency_code = 'USD' plane_type_id = '767-200'  seats_max = 260 seats_occupied = 137 )
     ( client = sy-mandt carrier_uuid = '01' connection_uuid = '0015' flight_date = '20220423' price = 3117  currency_code = 'USD' plane_type_id = '767-200'  seats_max = 260 seats_occupied = 213 )
     ( client = sy-mandt carrier_uuid = '01' connection_uuid = '0018' flight_date = '20230216' price = 3781  currency_code = 'USD' plane_type_id = 'A380-800' seats_max = 475 seats_occupied = 446 )
     ( client = sy-mandt carrier_uuid = '01' connection_uuid = '0018' flight_date = '20220422' price = 3823  currency_code = 'USD' plane_type_id = '767-200'  seats_max = 260 seats_occupied = 247 )
     ( client = sy-mandt carrier_uuid = '09' connection_uuid = '0400' flight_date = '20230218' price = 5484  currency_code = 'EUR' plane_type_id = 'A340-600' seats_max = 330 seats_occupied = 306 )
     ( client = sy-mandt carrier_uuid = '09' connection_uuid = '0400' flight_date = '20220424' price = 2649  currency_code = 'EUR' plane_type_id = '767-200'  seats_max = 260 seats_occupied = 130 )
     ( client = sy-mandt carrier_uuid = '09' connection_uuid = '0401' flight_date = '20230217' price = 3697  currency_code = 'EUR' plane_type_id = '747-400'  seats_max = 385 seats_occupied = 265 )
     ( client = sy-mandt carrier_uuid = '09' connection_uuid = '0401' flight_date = '20220423' price = 4867  currency_code = 'EUR' plane_type_id = 'A380-800' seats_max = 475 seats_occupied = 403 )
     ( client = sy-mandt carrier_uuid = '09' connection_uuid = '0402' flight_date = '20230213' price = 4911  currency_code = 'EUR' plane_type_id = '767-200'  seats_max = 260 seats_occupied = 221 )
     ( client = sy-mandt carrier_uuid = '09' connection_uuid = '0402' flight_date = '20220419' price = 3232  currency_code = 'EUR' plane_type_id = '747-400'  seats_max = 385 seats_occupied = 231 )
     ( client = sy-mandt carrier_uuid = '09' connection_uuid = '0403' flight_date = '20230213' price = 2797  currency_code = 'EUR' plane_type_id = 'A340-600' seats_max = 330 seats_occupied = 171 )
     ( client = sy-mandt carrier_uuid = '09' connection_uuid = '0403' flight_date = '20220419' price = 2486  currency_code = 'EUR' plane_type_id = '767-200'  seats_max = 260 seats_occupied = 117 )
     ( client = sy-mandt carrier_uuid = '11' connection_uuid = '0407' flight_date = '20230217' price = 5346  currency_code = 'JPY' plane_type_id = '747-400'  seats_max = 385 seats_occupied = 254 )
     ( client = sy-mandt carrier_uuid = '11' connection_uuid = '0407' flight_date = '20220423' price = 4032  currency_code = 'JPY' plane_type_id = 'A340-600' seats_max = 330 seats_occupied = 165 )
     ( client = sy-mandt carrier_uuid = '11' connection_uuid = '0408' flight_date = '20230218' price = 8159  currency_code = 'JPY' plane_type_id = 'A380-800' seats_max = 475 seats_occupied = 432 )
     ( client = sy-mandt carrier_uuid = '11' connection_uuid = '0408' flight_date = '20220424' price = 6471  currency_code = 'JPY' plane_type_id = '747-400'  seats_max = 385 seats_occupied = 296 )
     ( client = sy-mandt carrier_uuid = '04' connection_uuid = '0788' flight_date = '20230218' price = 7580  currency_code = 'EUR' plane_type_id = '767-200'  seats_max = 260 seats_occupied = 221 )
     ( client = sy-mandt carrier_uuid = '04' connection_uuid = '0788' flight_date = '20220424' price = 8059  currency_code = 'EUR' plane_type_id = 'A380-800' seats_max = 475 seats_occupied = 422 )
     ( client = sy-mandt carrier_uuid = '04' connection_uuid = '0789' flight_date = '20230217' price = 8539  currency_code = 'EUR' plane_type_id = 'A380-800' seats_max = 475 seats_occupied = 441 )
     ( client = sy-mandt carrier_uuid = '04' connection_uuid = '0789' flight_date = '20220423' price = 5852  currency_code = 'EUR' plane_type_id = 'A380-800' seats_max = 475 seats_occupied = 332 )
 ).

    GET TIME STAMP FIELD DATA(lv_utc_tstmp).

    LOOP AT rt_flight ASSIGNING FIELD-SYMBOL(<lfs_flight>).
      <lfs_flight>-flight_uuid     = |000000000000000000000000000000{ sy-tabix WIDTH = 2 PAD = '0' ALIGN = RIGHT }|.
      <lfs_flight>-carrier_uuid    = |0000000000000000000000000000{ <lfs_flight>-carrier_uuid }|.
      <lfs_flight>-connection_uuid = |0000000000000000000000000000{ <lfs_flight>-connection_uuid }|.
      <lfs_flight>-created_at      = lv_utc_tstmp.
      <lfs_flight>-created_by      = sy-uname.
    ENDLOOP.

  ENDMETHOD.


  METHOD set_flight_data.

    DELETE FROM zvks_flight.
    COMMIT WORK AND WAIT.

    rt_flight = me->get_flight_data( ).

    IF rt_flight IS NOT INITIAL.
      INSERT zvks_flight FROM TABLE @rt_flight.
      commit WORK AND WAIT.
    ENDIF.

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    data(lt_flight) = me->get_flight_data( ).
    out->write( lt_flight ).
  ENDMETHOD.
ENDCLASS.
