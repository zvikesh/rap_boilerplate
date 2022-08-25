CLASS zvks_cl_dg_flightbo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.

ENDCLASS.

CLASS zvks_cl_dg_flightbo IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    "Set Up Flight Business Object for Read Only List Report
    DATA(lt_flight)     = NEW zvks_cl_flight( )->set_flight_data( ).
    DATA(lt_connection) = NEW zvks_cl_connection( )->set_connection_data( ).
    DATA(lt_carrier)    = NEW zvks_cl_carrier( )->set_carrier_data( ).
    DATA(lt_airport)    = NEW zvks_cl_airport( )->set_airport_data( ).

    out->write( lt_flight ).
    out->write( lt_connection ).
    out->write( lt_carrier ).
    out->write( lt_airport ).
  ENDMETHOD.
ENDCLASS.
