CLASS zvks_cl_customer DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES:
      lty_t_customer TYPE STANDARD TABLE OF zvks_customer WITH DEFAULT KEY.

    CLASS-METHODS:
      get_customer_data RETURNING VALUE(rt_customer) TYPE lty_t_customer.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZVKS_CL_CUSTOMER IMPLEMENTATION.


  METHOD get_customer_data.

    rt_customer = VALUE #(
 ( client = sy-mandt customer_id = '000001' first_name = 'Theresia' last_name = 'Buchholm' title = 'Mrs.' street = 'Lerchenstr. 82' postal_code = '71116' city = 'Gaertringen' country_code = 'DE' phone_number = '+49-341-184709' )
 ( client = sy-mandt customer_id = '000002' first_name = 'Johannes' last_name = 'Buchholm' title = 'Mr.' street = 'Muehltalstr. 14' postal_code = '68723' city = 'Schwetzingen' country_code = 'DE' phone_number = '+49-291-299232' )
 ( client = sy-mandt customer_id = '000003' first_name = 'James' last_name = 'Buchholm' title = 'Mr.' street = 'Froschstr. 91' postal_code = '90419' city = 'Nuernberg' country_code = 'DE' phone_number = '+49-601-130850' )
 ( client = sy-mandt customer_id = '000004' first_name = 'Thomas' last_name = 'Buchholm' title = 'Mr.' street = 'Hauptstr. 84' postal_code = '63263' city = 'Neu-Isenburg' country_code = 'DE' phone_number = '+49-394-339928' )
 ( client = sy-mandt customer_id = '000005' first_name = 'Anna' last_name = 'Buchholm' title = 'Mrs.' street = 'Hasnerstrasse 13' postal_code = '4020' city = 'Linz' country_code = 'AT' phone_number = '+43-957-258037' )
 ( client = sy-mandt customer_id = '000006' first_name = 'Uli' last_name = 'Buchholm' title = 'Mrs.' street = 'Caspar-David-Friedrich-Str. 97' postal_code = '75757' city = 'Elsenz' country_code = 'DE' phone_number = '+49-367-156738' )
 ( client = sy-mandt customer_id = '000007' first_name = 'Jean-Luc' last_name = 'Buchholm' title = 'Mr.' street = 'Lake Shore Drive 92' postal_code = '22334' city = 'San Francisco' country_code = 'US' phone_number = '+1-848-371606' )
 ( client = sy-mandt customer_id = '000008' first_name = 'August' last_name = 'Buchholm' title = 'Mr.' street = 'Lerchenstr. 23' postal_code = '64342' city = 'Seeheim-Jugenheim' country_code = 'DE' phone_number = '+49-184-089871' )
 ( client = sy-mandt customer_id = '000009' first_name = 'Achim' last_name = 'Buchholm' title = 'Mr.' street = 'Stauboernchenstrasse 64' postal_code = '76137' city = 'Karlsruhe' country_code = 'DE' phone_number = '+49-797-976779' )
 ( client = sy-mandt customer_id = '000010' first_name = 'Irmtraut' last_name = 'Buchholm' title = 'Mrs.' street = 'Franz-Marc-Str. 31' postal_code = '69207' city = 'Kurt' country_code = 'DE' phone_number = '+49-417-532827' )
 ( client = sy-mandt customer_id = '000011' first_name = 'Thilo' last_name = 'Buchholm' title = 'Mr.' street = 'Golden Gate Drive 10' postal_code = '17844' city = 'Washington' country_code = 'US' phone_number = '+1-178-451995' )
 ( client = sy-mandt customer_id = '000012' first_name = 'Adam' last_name = 'Buchholm' title = 'Mr.' street = 'Via Giulio Cesare 55' postal_code = '00195' city = 'Roma' country_code = 'IT' phone_number = '+39-599-068501' )
 ( client = sy-mandt customer_id = '000013' first_name = 'Christa' last_name = 'Buchholm' title = 'Mrs.' street = 'Zwischergasse 28' postal_code = '64283' city = 'Darmstadt' country_code = 'DE' phone_number = '+49-202-786338' )
 ( client = sy-mandt customer_id = '000014' first_name = 'Andreas' last_name = 'Vrsic' title = 'Mr.' street = 'Carl-Metz Strasse 19' postal_code = '69190' city = 'Walldorf' country_code = 'DE' phone_number = '+49-290-279097' )
 ( client = sy-mandt customer_id = '000015' first_name = 'Adam' last_name = 'Vrsic' title = 'Mr.' street = 'Via Giulio Cesare 55' postal_code = '00195' city = 'Roma' country_code = 'IT' phone_number = '+39-668-295457' )
 ( client = sy-mandt customer_id = '000016' first_name = 'Max' last_name = 'Vrsic' title = 'Mr.' street = 'Caspar-David-Friedrich-Str. 100' postal_code = '15344' city = 'Strausberg' country_code = 'DE' phone_number = '+49-182-347044' )
 ( client = sy-mandt customer_id = '000017' first_name = 'Uli' last_name = 'Vrsic' title = 'Mrs.' street = 'Golden Gate Drive 96' postal_code = '63728' city = 'New Orleans' country_code = 'US' phone_number = '+1-877-138602' )
 ( client = sy-mandt customer_id = '000018' first_name = 'Max' last_name = 'Vrsic' title = 'Mr.' street = 'Rankestr. 100' postal_code = '15344' city = 'Strausberg' country_code = 'DE' phone_number = '+49-778-692286' )
 ( client = sy-mandt customer_id = '000019' first_name = 'Uli' last_name = 'Vrsic' title = 'Mrs.' street = 'Franz-Marc-Str. 97' postal_code = '75757' city = 'Elsenz' country_code = 'DE' phone_number = '+49-444-014771' )
 ( client = sy-mandt customer_id = '000020' first_name = 'Uli' last_name = 'Jeremias' title = 'Mrs.' street = 'Waldmann 97' postal_code = '75757' city = 'Elsenz' country_code = 'DE' phone_number = '+49-964-656127' )
 ( client = sy-mandt customer_id = '000021' first_name = 'Johann' last_name = 'Jeremias' title = 'Mr.' street = 'Elzstrasse 16' postal_code = '68789' city = 'St. Leon-Rot' country_code = 'DE' phone_number = '+49-888-680507' )
 ( client = sy-mandt customer_id = '000022' first_name = 'Marta' last_name = 'Jeremias' title = 'Mrs.' street = 'Schillerstr. 73' postal_code = '69180' city = 'Wiesloch' country_code = 'DE' phone_number = '+49-597-642616' )
 ( client = sy-mandt customer_id = '000023' first_name = 'Uli' last_name = 'Jeremias' title = 'Mrs.' street = 'Schillerstr. 98' postal_code = '75757' city = 'Elsenz' country_code = 'DE' phone_number = '+49-402-216176' )
 ( client = sy-mandt customer_id = '000024' first_name = 'Siegfried' last_name = 'Jeremias' title = 'Mr.' street = 'Karl-Marx-Allee 99' postal_code = '70111' city = 'Reutlingen' country_code = 'DE' phone_number = '+49-327-932455' )
 ( client = sy-mandt customer_id = '000025' first_name = 'Uli' last_name = 'Jeremias' title = 'Mrs.' street = 'Golden Gate Drive 96' postal_code = '63728' city = 'New Orleans' country_code = 'US' phone_number = '+1-979-397077')
 ).

    "Blank UUID    00000000000000000000000000 000000
    "Customer UUID 00000000000000000000000000 000001

    GET TIME STAMP FIELD DATA(lv_utc_tstmp).

    LOOP AT rt_customer ASSIGNING FIELD-SYMBOL(<lfs_customer>).
      <lfs_customer>-customer_uuid = |00000000000000000000000000{ <lfs_customer>-customer_id }|.
      <lfs_customer>-email_address = |{ <lfs_customer>-first_name CASE = LOWER }.{ <lfs_customer>-last_name CASE = LOWER }@flight.example.{ <lfs_customer>-country_code CASE = LOWER }|.
      <lfs_customer>-created_at  = lv_utc_tstmp.
      <lfs_customer>-created_by  = sy-uname.
    ENDLOOP.

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    DATA(rt_customer) = me->get_customer_data( ).
    out->write( rt_customer ).
  ENDMETHOD.
ENDCLASS.
