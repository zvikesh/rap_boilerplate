@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Customer View - CDS Data Model'
-- Data Model
   //@VDM.viewType: #BASIC Not released on cloud
-- Performance
@ObjectModel.usageType:{
    serviceQuality: #A,         //ABAP
    sizeCategory: #L,           //10 Million
    dataClass: #TRANSACTIONAL   //ABAP
}
define view entity ZVKS_I_CustomerBasic
  as select from zvks_customer as Customer
  association [0..1] to I_Country as _Country on $projection.CountryCode = _Country.Country
{
      @Semantics.uuid: true  
  key Customer.customer_uuid as CustomerUUID,
      @ObjectModel.text.element: ['LastName']
      Customer.customer_id   as CustomerID,
      Customer.first_name    as FirstName,
      @Semantics.text: true
      Customer.last_name     as LastName,
      @Semantics.address.street: true
      Customer.title         as Title,
      @Semantics.address.street: true
      Customer.street        as Street,
      @Semantics.address.zipCode: true
      Customer.postal_code   as PostalCode,
      @Semantics.address.city: true
      Customer.city          as City,
      @Consumption.valueHelpDefinition: [{entity: { name: 'I_Country', element: 'Country' } }]
      Customer.country_code  as CountryCode,
      @Semantics.telephone.type: [#CELL]
      Customer.phone_number  as PhoneNumber,
      @Semantics.eMail.address: true
      Customer.email_address as EMailAddress,

      /* Associations */
      _Country

}
