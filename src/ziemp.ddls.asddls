@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Information'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZIEMP
  as select from ztemp as _emp
  composition [0..*] of ZILEAVEBAL as _leavebal
{
  key _emp.emp_no       as EmpNo,
      _emp.empnam       as Empnam,
      _emp.gender       as Gender,
      _emp.birthday     as Birthday,
      _emp.address      as Address,
      _emp.manager_no   as ManagerNo,
      _emp.job_title    as JobTitle,
      _emp.del          as Del,
      @Semantics.user.createdBy: true
      _emp.created_user as CreatedUser,
      @Semantics.systemDateTime.createdAt: true
      _emp.created_date as CreatedDate,
      @Semantics.user.lastChangedBy: true
      _emp.changed_user as ChangedUser,
      @Semantics.systemDateTime.lastChangedAt: true
      _emp.changed_date as ChangedDate,
      _leavebal
}
