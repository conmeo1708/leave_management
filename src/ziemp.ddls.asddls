@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Information'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZIEMP
  as select from ztemp as _emp
  composition [0..*] of ZILEAVEBAL as _leavebal
  association [0..1] to ZIGENDER   as _gender on $projection.Gender = _gender.Gender
  association [0..1] to ZIFLAG     as _flag   on $projection.Del = _flag.Flag
{
  key _emp.emp_no       as EmpNo,
      _emp.empnam       as Empnam,
      _emp.gender       as Gender,
      _gender.Text      as GenderText,
      _emp.birthday     as Birthday,
      _emp.address      as Address,
      _emp.manager_no   as ManagerNo,
      _emp.job_title    as JobTitle,
      _emp.del          as Del,
      _flag.Text        as DelFlagText,
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
