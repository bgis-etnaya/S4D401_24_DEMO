CLASS /lrn/cl_s4d401_exd_global DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS /LRN/CL_S4D401_EXD_GLOBAL IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA connection TYPE REF TO lcl_connection.

    TRY.
        connection = NEW #(  i_carrier_id    = 'XX'
                             i_connection_id = '0000' ).

      CATCH /lrn/cx_S4D401_no_connection INTO DATA(exception).

        out->write( exception->get_text(  ) ).

    ENDTRY.
  ENDMETHOD.
ENDCLASS.
