@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Suppliment projection Layer'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZATS_DS_BOOKSUPPL_PROCESSOR as projection on ZATS_DS_BOOKSUPPL
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    SupplementId,
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
    _Booking: redirected to parent ZTS_DS_BOOKING_PROCESSOR,
    _Product,
    _SupplementText,
    _Travel: redirected to ZATS_DS_TRAVEL_PROCESSOR
}
