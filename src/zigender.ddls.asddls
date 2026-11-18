@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Gender'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.dataCategory: #VALUE_HELP
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZIGENDER
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE( p_domain_name: 'ZDGENDER' ) as _gender
  association [0..1] to DDCDS_CUSTOMER_DOMAIN_VALUE_T as _genderText on _gender.value_low = _genderText.value_low
{
      @UI.textArrangement: #TEXT_LAST
      @ObjectModel.text.element: [ 'Text' ]
  key _gender.value_low                             as Gender,
      _genderText( p_domain_name: 'ZDGENDER' ).text as Text
}
where
  _genderText( p_domain_name: 'ZDGENDER' ).language = $session.system_language
