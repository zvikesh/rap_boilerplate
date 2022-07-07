@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Booking Basic Interface View'
-- Data Model
   //@VDM.viewType: #BASIC Not released on cloud
-- Performance
@ObjectModel.usageType:{
    serviceQuality: #A,         //ABAP
    sizeCategory: #L,           //10 Million
    dataClass: #TRANSACTIONAL   //ABAP
}
define view entity ZVKS_I_BookingBasic
  as select from zvks_booking
{
  key booking_uuid  as BookingUUID,
      travel_uuid   as TravelUUID,
      travel_id     as TravelID,
      booking_id    as BookingID,
      booking_date  as BookingDate,
      customer_id   as CustomerID,
      carrier_id    as CarrierID,
      connection_id as ConnectionID,
      flight_date   as FlightDate,
      flight_price  as FlightPrice,
      currency_code as CurrencyCode
}
