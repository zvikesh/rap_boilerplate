@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Basic Interface View'
-- Data Model
   //@VDM.viewType: #BASIC Not released on cloud
-- Performance
@ObjectModel.usageType:{
    serviceQuality: #A,         //ABAP
    sizeCategory: #L,           //10 Million
    dataClass: #TRANSACTIONAL   //ABAP
}
define view entity ZVKS_I_TravelBasic
  as select from zvks_travel
{
  key travel_uuid   as TravelUUID,
      travel_id     as TravelID,
      agency_id     as AgencyID,
      customer_id   as CustomerID,
      begin_date    as BeginDate,
      end_date      as EndDate,
      booking_fee   as BookingFee,
      total_price   as TotalPrice,
      currency_code as CurrencyCode,
      description   as Description,
      status        as Status,
      createdat     as CreatedAt,
      createdby     as CreatedBy,
      lastchangedat as LastChangedAt,
      lastchangedby as LastChangedBy
}
