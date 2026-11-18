@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Leave Balance'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZILEAVEBAL
  as select from ztleavebal as _leavebal
  association        to parent ZIEMP as _emp       on $projection.EmpNo = _emp.EmpNo
  association [0..*] to ZILEAVETYP   as _leaveType on $projection.LeaveType = _leaveType.LeaveType
{
  key emp_no           as EmpNo,
  key zyear            as Zyear,

  key leave_type       as LeaveType,
      _leaveType.Descr as LeaveTypeDescr,
      entitled_days    as EntitledDays,
      used_days        as UsedDays,
      @Semantics.user.createdBy: true
      created_user     as CreatedUser,
      @Semantics.systemDateTime.createdAt: true
      created_date     as CreatedDate,
      @Semantics.user.lastChangedBy: true
      changed_user     as ChangedUser,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_date     as ChangedDate,
      _emp
}
