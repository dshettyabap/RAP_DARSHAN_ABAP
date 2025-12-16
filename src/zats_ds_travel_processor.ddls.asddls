@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Root processor of by RAP BO'
//@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZATS_DS_TRAVEL_PROCESSOR
  as projection on ZATS_DS_TRAVEL
{
  key TravelId,
      @Consumption.valueHelpDefinition: [{
          entity.name: '/DMO/I_Agency',
          entity.element: 'AgencyID'
       }]
      AgencyId,
      @Consumption.valueHelpDefinition: [{
          entity.name: '/DMO/I_Customer',
          entity.element: 'CustomerID'
       }]
      CustomerId,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      CurrencyCode,
      Description,
      @Consumption.valueHelpDefinition: [{
          entity.name: '/DMO/I_Overall_Status_VH',
          entity.element: 'OverallStatus'
       }]
      @ObjectModel.text.element: [ 'StatusText' ]
      OverallStatus,
      @Semantics.text: true
      StatusText,
      Criticality,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      /* Associations */
      _Agency,
      _Booking: redirected to composition child ZTS_DS_BOOKING_PROCESSOR,
      _Currency,
      _Customer,
      _OverallStatus
}
