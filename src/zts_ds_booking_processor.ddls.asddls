@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view on teh Booking Process'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZTS_DS_BOOKING_PROCESSOR as projection on ZATS_DS_BOOKING
{
 key TravelId,
 key BookingId,
 BookingDate,
 @Consumption.valueHelpDefinition: [{entity: {name: '/DMO/I_CUSTOMER', element: 'CustomerID' }}]
 CustomerId,
 CarrierId,
 ConnectionId,
 FlightDate,
 FlightPrice,
 CurrencyCode,
 BookingStatus,
 LastChangedAt,
 /* Associations */
 _BookingStatus,
 _BookingSupplement:redirected to composition child ZATS_DS_BOOKSUPPL_PROCESSOR,
 _Carrier,
 _Connection,
 _Customer,
 _Travel_id:redirected to parent ZATS_DS_TRAVEL_PROCESSOR
}
