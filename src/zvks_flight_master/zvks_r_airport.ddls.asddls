@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Airport Entity Basic View'
-- Data Model
//@VDM.viewType: #BASIC //Not released on cloud
-- Performance
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #L,           
    dataClass: #MASTER  
}
define view entity ZVKS_R_Airport
  as select from zvks_airport
{
  key airport_uuid    as AirportUUID,
      airport_id      as AirportID,
      name            as Name,
      city            as City,
      country         as Country,
      @Semantics.user.createdBy: true
      created_by      as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at      as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at as LastChangedAt
}
