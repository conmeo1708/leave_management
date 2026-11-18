@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Information'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZCEMP
  provider contract transactional_query
  as projection on ZIEMP
{
  key EmpNo,
      @Search:{
        defaultSearchElement: true,
        fuzzinessThreshold: 0.8
      }
      Empnam,
      @UI.textArrangement: #TEXT_LAST
      @ObjectModel.text.element: [ 'GenderText' ]
      Gender,
      GenderText,
      Birthday,
      @Search:{
        defaultSearchElement: true,
        fuzzinessThreshold: 0.8
      }
      Address,
      ManagerNo,
      @Search:{
        defaultSearchElement: true,
        fuzzinessThreshold: 0.8
      }
      JobTitle,
      @UI.textArrangement: #TEXT_LAST
      @ObjectModel.text.element: [ 'DelFlagText' ]
      Del,
      DelFlagText,
      CreatedUser,
      CreatedDate,
      ChangedUser,
      ChangedDate,
      /* Associations */
      _leavebal : redirected to composition child ZCLEAVEBAL
}
