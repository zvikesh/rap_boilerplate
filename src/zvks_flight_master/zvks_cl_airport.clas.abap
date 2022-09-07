CLASS zvks_cl_airport DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:
      lty_t_airport TYPE STANDARD TABLE OF zvks_airport WITH DEFAULT KEY.

    METHODS:
      get_airport_data RETURNING VALUE(rt_airport) TYPE lty_t_airport,
      set_airport_data RETURNING VALUE(rt_airport) TYPE lty_t_airport.

    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZVKS_CL_AIRPORT IMPLEMENTATION.


  METHOD get_airport_data.

    rt_airport = VALUE #(
    ( client = sy-mandt airport_id ='ACA' name ='General Juan N. Álvarez Int. Airport' city ='Acapulco, Guerrero' country ='MX'  )
    ( client = sy-mandt airport_id ='ACE' name ='Lanzarote Airport' city ='Lanzarote, Canary Islands' country ='ES'  )
    ( client = sy-mandt airport_id ='ASP' name ='Alice Springs Airport' city ='Alice Springs, Northern Territory' country ='AU'  )
    ( client = sy-mandt airport_id ='BKK' name ='Suvarnabhumi Airport' city ='Bangkok' country ='TH'  )
    ( client = sy-mandt airport_id ='BNA' name ='Nashville International Airport' city ='Nashville, Tennessee' country ='US'  )
    ( client = sy-mandt airport_id ='BOS' name ='Logan International Airport' city ='Boston, Massachusetts' country ='US'  )
    ( client = sy-mandt airport_id ='CDG' name ='Charles de Gaulle Airport' city ='Paris' country ='FR'  )
    ( client = sy-mandt airport_id ='DEN' name ='Denver International Airport' city ='Denver, Colorado' country ='US'  )
    ( client = sy-mandt airport_id ='ELP' name ='El Paso International Airport' city ='El Paso, Texas' country ='US'  )
    ( client = sy-mandt airport_id ='EWR' name ='Newark Liberty International Airport' city ='Newark, New Jersey' country ='US'  )
    ( client = sy-mandt airport_id ='FCO' name ='Leonardo da Vinci–Fiumicino Airport' city ='Rome' country ='IT'  )
    ( client = sy-mandt airport_id ='FRA' name ='Frankfurt Airport' city ='Frankfurt/Main' country ='DE'  )
    ( client = sy-mandt airport_id ='GCJ' name ='Grand Central Airport' city ='Johannesburg' country ='SA'  )
    ( client = sy-mandt airport_id ='GIG' name ='Rio de Janeiro–Galeão Int. Airport' city ='Rio de Janeiro' country ='BR'  )
    ( client = sy-mandt airport_id ='HAM' name ='Hamburg Airport' city ='Hamburg' country ='DE'  )
    ( client = sy-mandt airport_id ='HAV' name ='José Martí International Airport' city ='Havana' country ='CU'  )
    ( client = sy-mandt airport_id ='HIJ' name ='Hiroshima Airport' city ='Hiroshima, Honshu' country ='JP'  )
    ( client = sy-mandt airport_id ='HKG' name ='Hong Kong International Airport' city ='Hongkong' country ='CN'  )
    ( client = sy-mandt airport_id ='HOU' name ='William P. Hobby Airport' city ='Houston, Texas' country ='US'  )
    ( client = sy-mandt airport_id ='HRE' name ='Harare International Airport' city ='Harare' country ='ZW'  )
    ( client = sy-mandt airport_id ='ITM' name ='Osaka International Airport' city ='Osaka, Honshu' country ='JP'  )
    ( client = sy-mandt airport_id ='JFK' name ='John F. Kennedy International Airport' city ='New York City, New York' country ='US'  )
    ( client = sy-mandt airport_id ='KIX' name ='Kansai International Airport' city ='Osaka, Honshu' country ='JP'  )
    ( client = sy-mandt airport_id ='KUL' name ='Kuala Lumpur International Airport' city ='Kuala Lumpur' country ='MY'  )
    ( client = sy-mandt airport_id ='LAS' name ='McCarran International Airport' city ='Las Vegas, Nevada' country ='US'  )
    ( client = sy-mandt airport_id ='LAX' name ='Los Angeles International Airport' city ='Los Angeles, California' country ='US'  )
    ( client = sy-mandt airport_id ='LCY' name ='London City Airport' city ='London' country ='UK'  )
    ( client = sy-mandt airport_id ='LGW' name ='Gatwick Airport' city ='London' country ='UK'  )
    ( client = sy-mandt airport_id ='LHR' name ='Heathrow Airport' city ='London' country ='UK'  )
    ( client = sy-mandt airport_id ='MAD' name ='Adolfo Suárez Madrid–Barajas Airport' city ='Madrid' country ='ES'  )
    ( client = sy-mandt airport_id ='MCI' name ='Kansas City International Airport' city ='Kansas City, Missouri' country ='US'  )
    ( client = sy-mandt airport_id ='MIA' name ='Miami International Airport' city ='Miami, Florida' country ='US'  )
    ( client = sy-mandt airport_id ='MUC' name ='Munich Airport' city ='Munich' country ='DE'  )
    ( client = sy-mandt airport_id ='NRT' name ='Narita International Airport' city ='Tokyo, Honshu' country ='JP'  )
    ( client = sy-mandt airport_id ='ORY' name ='Orly Airport' city ='Paris' country ='FR'  )
    ( client = sy-mandt airport_id ='RTM' name ='Rotterdam The Hague Airport' city ='Rotterdam' country ='NL'  )
    ( client = sy-mandt airport_id ='SFO' name ='San Francisco International Airport' city ='San Francisco, California' country ='US'  )
    ( client = sy-mandt airport_id ='SIN' name ='Singapore Changi Airport' city ='Singapore' country ='SG'  )
    ( client = sy-mandt airport_id ='SVO' name ='Sheremetyevo International Airport' city ='Moscow' country ='RU'  )
    ( client = sy-mandt airport_id ='SXF' name ='Berlin Schönefeld Airport' city ='Berlin' country ='DE'  )
    ( client = sy-mandt airport_id ='THF' name ='Berlin Tempelhof Airport' city ='Berlin' country ='DE'  )
    ( client = sy-mandt airport_id ='TXL' name ='Berlin Tegel Airport' city ='Berlin' country ='DE'  )
    ( client = sy-mandt airport_id ='VCE' name ='Venice Marco Polo Airport' city ='Venice' country ='IT'  )
    ( client = sy-mandt airport_id ='VIE' name ='Vienna International Airport' city ='Vienna' country ='AT'  )
    ( client = sy-mandt airport_id ='VKO' name ='Vnukovo International Airport' city ='Moscow' country ='RU'  )
    ( client = sy-mandt airport_id ='YOW' name ='Ottawa Macdonald–Cartier Int. Airport' city ='Ottawa, Ontario' country ='CA'  )
    ( client = sy-mandt airport_id ='ZRH' name ='Zürich Airport' city ='Zurich' country ='CH'  )
    ).

    "Blank UUID   00000000000000000000000000 000000
    "Airport UUID 00000000000000000000000000 A1C2A3
    "Airport UUID 000000000000000000000000000000 01

    GET TIME STAMP FIELD DATA(lv_utc_tstmp).

    LOOP AT rt_airport ASSIGNING FIELD-SYMBOL(<lfs_airport>).
      <lfs_airport>-airport_uuid = |000000000000000000000000000000{ sy-tabix WIDTH = 2 PAD = '0' ALIGN = RIGHT }|.
      <lfs_airport>-created_at   = lv_utc_tstmp.
      <lfs_airport>-created_by   = sy-uname.
    ENDLOOP.

  ENDMETHOD.


  METHOD set_airport_data.

    DELETE FROM zvks_airport.
    COMMIT WORK AND WAIT.

    rt_airport = me->get_airport_data( ).

    IF rt_airport IS NOT INITIAL.
      INSERT zvks_airport FROM TABLE @rt_airport.
      COMMIT WORK AND WAIT.
    ENDIF.

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    DATA(lt_airport) = me->get_airport_data( ).
    out->write( lt_airport ).
  ENDMETHOD.
ENDCLASS.
