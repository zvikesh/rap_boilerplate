@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Connection View - CDS Data Model'
-- Data Model
   //@VDM.viewType: #BASIC Not released on cloud
-- Performance
@ObjectModel.usageType:{
    serviceQuality: #A,         //ABAP
    sizeCategory: #L,           //10 Million
    dataClass: #TRANSACTIONAL   //ABAP
}
define view entity ZVKS_I_ConnectionBasic
  as select from zvks_connection as Connection
{
  key  Connection.carrier_uuid    as AirlineUUID,
       Connection.carrier_id      as AirlineID,
       Connection.connection_id   as ConnectionID,
       Connection.airport_from_id as DepartureAirport,
       Connection.airport_to_id   as DestinationAirport,
       Connection.departure_time  as DepartureTime,
       Connection.arrival_time    as ArrivalTime,
       Connection.distance        as Distance,
       Connection.distance_unit   as DistanceUnit
}
