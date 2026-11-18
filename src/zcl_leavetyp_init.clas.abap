CLASS zcl_leavetyp_init DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_leavetyp_init IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lt_leavetyp TYPE STANDARD TABLE OF ztleavetyp,
          lt_flag     TYPE STANDARD TABLE OF ztflag.

    lt_leavetyp = VALUE #(
      ( leave_type = 'P' descr = 'Paid Leave' deduct_fr_balance = 'X' )
      ( leave_type = 'U' descr = 'Unpaid Leave' deduct_fr_balance = '' )
      ( leave_type = 'V' descr = 'Vacation Leave' deduct_fr_balance = 'X' )
    ).

    lt_flag = VALUE #(
        ( flag = 'X' description = 'Yes' )
        ( flag = '' description = 'No' )
    ).

    MODIFY ztleavetyp FROM TABLE @lt_leavetyp.
    MODIFY ztflag FROM TABLE @lt_flag.
  ENDMETHOD.
ENDCLASS.
