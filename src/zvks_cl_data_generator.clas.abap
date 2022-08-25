CLASS zvks_cl_data_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.

ENDCLASS.



CLASS ZVKS_CL_DATA_GENERATOR IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    "Set Up Flight Business Object for Read Only List Report
    DATA(lt_flight)     = NEW zvks_cl_flight( )->set_flight_data( ).
    DATA(lt_connection) = NEW zvks_cl_connection( )->set_connection_data( ).
    DATA(lt_carrier)    = NEW zvks_cl_carrier( )->set_carrier_data( ).
    DATA(lt_airport)    = NEW zvks_cl_airport( )->set_airport_data( ).

    "Set Up Agency Master Data
    "NEW zvks_cl_agency( )->set_agency_data( ).

    "Set Up Customer Master Data
    "NEW zvks_cl_customer( )->set_customer_data( ).

    "Set Up Supplement Master Data
    "NEW zvks_cl_supplement( )->set_supplement_data( ).

    "Set Up Travel Business Object for Transactional List Report
    "NEW zvks_cl_travel( )->set_travel_data( ).
    "NEW zvks_cl_booking( )->set_booking_data( ).kukyiuyiuyiyiuyiyjhgjygyh

    "NEW zvks_cl_booking_supplement(  )->set_booking_supplement_data( ).

    "Set Up Auxiliary Data
    "Booking Status
    "Overall Status
    "Travel Status

    out->write( lt_flight ).
    out->write( lt_connection ).
    out->write( lt_carrier ).
    out->write( lt_airport ).

  ENDMETHOD.
ENDCLASS.
