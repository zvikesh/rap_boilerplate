@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Connection Entity Basic View'
-- Data Model
   //@VDM.viewType: #BASIC //Not released on cloud
-- Performance
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #L, 
    dataClass: #MASTER
}
define view entity ZVKS_R_Connection
  as select from zvks_connection as Connection
{
  key connection_uuid   as ConnectionUUID,
      carrier_uuid      as CarrierUUID,
      airport_from_uuid as AirportFromUUID,
      airport_to_uuid   as AirportToUUID,
      connection_id     as ConnectionID,
      departure_time    as DepartureTime,
      arrival_time      as ArrivalTime,
      distance          as Distance,
      distance_unit     as DistanceUnit,
      @Semantics.user.createdBy: true
      created_by        as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at        as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by   as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at   as LastChangedAt
}
