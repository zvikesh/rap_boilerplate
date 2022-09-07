@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Carrier Entity Basic View'
-- Data Model
   //@VDM.viewType: #BASIC //Not released on cloud
-- Performance
@ObjectModel.usageType:{
    serviceQuality: #A,         
    sizeCategory: #L,           
    dataClass: #MASTER          
}
define view entity ZVKS_R_Carrier
  as select from zvks_carrier as Airline
{
  key carrier_uuid    as CarrierUUID,
      carrier_id      as CarrierID,
      name            as Name,
      currency_code   as CurrencyCode,
      @Semantics.user.createdBy: true
      created_by        as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at        as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by   as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at   as LastChangedAt
}
