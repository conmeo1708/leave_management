@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Leave Balance'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZCLEAVEBAL
  as projection on ZILEAVEBAL
{
  key EmpNo,
  key Zyear,
  key LeaveType,
      LeaveTypeDescr,
      EntitledDays,
      UsedDays,
      CreatedUser,
      CreatedDate,
      ChangedUser,
      ChangedDate,
      /* Associations */
      _emp : redirected to parent ZCEMP
}
