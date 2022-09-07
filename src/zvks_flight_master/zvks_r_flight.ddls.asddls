@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight Entity Basic View'
-- Data Model
//@VDM.viewType: #BASIC //Not released on cloud
-- Performance
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #L,           
    dataClass: #MASTER  
}
define view entity ZVKS_R_Flight
  as select from zvks_flight
{
  key flight_uuid     as FlightUUID,
      carrier_uuid    as CarrierUUID,
      connection_uuid as ConnectionUUID,
      flight_date     as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price           as Price,
      //@Semantics.currencyCode: true                                 //Not allowed in View Entity
      currency_code   as CurrencyCode,
      plane_type_id   as PlaneTypeId,
      seats_max       as SeatsMax,
      seats_occupied  as SeatsOccupied,
      @Semantics.user.createdBy: true
      created_by      as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at      as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      //@Semantics.systemDateTime.localInstanceLastChangedAt: true    //Check the difference 
      last_changed_at as LastChangedAt
}
