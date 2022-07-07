CLASS zvks_cl_data_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:
      lty_t_travel     TYPE STANDARD TABLE OF zvks_travel     WITH DEFAULT KEY,
      lty_t_customer   TYPE STANDARD TABLE OF zvks_customer   WITH DEFAULT KEY,
      lty_t_connection TYPE STANDARD TABLE OF zvks_connection WITH DEFAULT KEY,
      lty_t_carrier    TYPE STANDARD TABLE OF zvks_carrier    WITH DEFAULT KEY,
      lty_t_booking    TYPE STANDARD TABLE OF zvks_booking    WITH DEFAULT KEY,
      lty_t_book_suppl TYPE STANDARD TABLE OF zvks_book_suppl WITH DEFAULT KEY,
      lty_t_agency     TYPE STANDARD TABLE OF zvks_agency     WITH DEFAULT KEY.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS:
      get_travel     RETURNING VALUE(rt_travel)     TYPE lty_t_travel,
      get_customer   RETURNING VALUE(rt_customer)   TYPE lty_t_customer,
      get_connection RETURNING VALUE(rt_connection) TYPE lty_t_connection,
      get_carrier    RETURNING VALUE(rt_carrier)    TYPE lty_t_carrier,
      get_booking    RETURNING VALUE(rt_booking)    TYPE lty_t_booking,
      get_book_suppl RETURNING VALUE(rt_book_suppl) TYPE lty_t_book_suppl,
      get_agency     RETURNING VALUE(rt_agency)     TYPE lty_t_agency.
ENDCLASS.



CLASS ZVKS_CL_DATA_GENERATOR IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA lv_error TYPE abap_boolean.

    DELETE FROM zvks_travel.
    DELETE FROM zvks_customer.
    DELETE FROM zvks_connection.
    DELETE FROM zvks_carrier.
    DELETE FROM zvks_booking.
    DELETE FROM zvks_book_suppl.
    DELETE FROM zvks_agency.
    COMMIT WORK AND WAIT.

    DATA(lt_travel)     = me->get_travel( ).
    DATA(lt_customer)   = me->get_customer( ).
    DATA(lt_connection) = me->get_connection( ).
    DATA(lt_carrier)    = me->get_carrier( ).
    DATA(lt_booking)    = me->get_booking( ).
    DATA(lt_book_suppl) = me->get_book_suppl( ).
    DATA(lt_agency)     = me->get_agency( ).

    IF lt_travel IS NOT INITIAL.
      INSERT zvks_travel FROM TABLE @lt_travel.
    ENDIF.

    IF lt_customer IS NOT INITIAL.
      INSERT zvks_customer FROM TABLE @lt_customer.
    ENDIF.

    IF lt_connection IS NOT INITIAL.
      INSERT zvks_connection FROM TABLE @lt_connection.
    ENDIF.

    IF lt_carrier IS NOT INITIAL.
      INSERT zvks_carrier FROM TABLE @lt_carrier.
    ENDIF.

    IF lt_booking IS NOT INITIAL.
      INSERT zvks_booking FROM TABLE @lt_booking.
    ENDIF.

    IF lt_book_suppl IS NOT INITIAL.
      INSERT zvks_book_suppl FROM TABLE @lt_book_suppl.
    ENDIF.

    IF lt_agency IS NOT INITIAL.
      INSERT zvks_agency FROM TABLE @lt_agency.
    ENDIF.

    COMMIT WORK AND WAIT.

  ENDMETHOD.


  METHOD get_travel.

    rt_travel = VALUE #(
    ( )
    ( ) ).

  ENDMETHOD.


  METHOD get_customer.

    rt_customer = VALUE #(
    ( )
    ( ) ).

  ENDMETHOD.


  METHOD get_connection.

    rt_connection = VALUE #(
    ( )
    ( ) ).

  ENDMETHOD.


  METHOD get_carrier.

    rt_carrier = VALUE #(
    ( )
    ( ) ).

  ENDMETHOD.


  METHOD get_booking.

    rt_booking = VALUE #(
    ( )
    ( ) ).

  ENDMETHOD.


  METHOD get_book_suppl.

    rt_book_suppl = VALUE #(
    ( )
    ( ) ).

  ENDMETHOD.


  METHOD get_agency.

    rt_agency = VALUE #(
    ( )
    ( ) ).

  ENDMETHOD.
ENDCLASS.
