@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Leave Type'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZILEAVETYP
  as select from ztleavetyp
{
  key leave_type        as LeaveType,
      descr             as Descr,
      deduct_fr_balance as DeductFrBalance
}
