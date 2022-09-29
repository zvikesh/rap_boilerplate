@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Airport Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,   
    dataClass: #MIXED
}
-- Drop Down
//@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZVKS_R_AirportVH
  as select from ZVKS_R_Airport
{
      @UI.hidden: true
  key AirportUUID,
      @EndUserText.label: 'Airport Code'
      //@ObjectModel.text.element: ['Name']
      AirportID,
      @EndUserText.label: 'Airport Name'
      Name,
      City,
      Country,
      @UI.hidden: true
      CreatedBy,
      @UI.hidden: true
      CreatedAt,
      @UI.hidden: true
      LastChangedBy,
      @UI.hidden: true
      LastChangedAt
}
