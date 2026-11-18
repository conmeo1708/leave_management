@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Leave Type'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.dataCategory: #VALUE_HELP
define view entity ZILEAVETYP
  as select from ztleavetyp
{
      @ObjectModel.text.element: [ 'Descr' ]
      @UI.textArrangement: #TEXT_LAST
  key leave_type        as LeaveType,
      descr             as Descr,
      deduct_fr_balance as DeductFrBalance
}
