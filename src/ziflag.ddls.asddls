@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flag'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.dataCategory: #VALUE_HELP
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZIFLAG
  as select from ztflag
{
      @UI.textArrangement: #TEXT_LAST
      @ObjectModel.text.element: [ 'Text' ]
  key flag        as Flag,
      description as Text
}
