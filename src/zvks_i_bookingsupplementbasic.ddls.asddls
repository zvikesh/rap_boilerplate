@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Booking Suppl. Basic Interface View'
-- Data Model
   //@VDM.viewType: #BASIC Not released on cloud
-- Performance
@ObjectModel.usageType:{
    serviceQuality: #A,         //ABAP
    sizeCategory: #L,           //10 Million
    dataClass: #TRANSACTIONAL   //ABAP
}
define view entity ZVKS_I_BookingSupplementBasic
  as select from zvks_book_suppl
{
  key booking_supplement_uuid as BookingSupplementUUID, 
      travel_uuid             as TravelUUID,
      booking_uuid            as BookingUUID,
      travel_id               as TravelID,
      booking_id              as BookingID,
      booking_supplement_id   as BookingSupplementID,
      supplement_id           as SupplementID,
      price                   as Price,
      currency_code           as CurrencyCode
}
