@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Carrier View - CDS Data Model'
-- Data Model
   //@VDM.viewType: #BASIC Not released on cloud
-- Performance
@ObjectModel.usageType:{
    serviceQuality: #A,         //ABAP
    sizeCategory: #L,           //10 Million
    dataClass: #TRANSACTIONAL   //ABAP
}
define view entity ZVKS_I_CarrierBasic
  as select from zvks_carrier as Airline
{
  key Airline.carrier_uuid  as CarrierUUID,
      carrier_id            as AirlineID,
      Airline.name          as Name,
      Airline.currency_code as CurrencyCode
}
