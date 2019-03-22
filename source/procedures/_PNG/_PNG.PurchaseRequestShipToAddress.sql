create procedure "_PNG"."PurchaseRequestShipToAddress"( 
  in @ShipToLocationId integer ) 
result( 
  "AddressLineOne" char(128),
  "AddressLineTwo" char(128),
  "AddressLineThree" char(128),
  "City" char(128),
  "StateProvince" char(128),
  "ZipPostalCode" char(15),
  "Country" char(128) ) 
begin
  call "PNG"."PurchaseRequestShipToAddress"(@ShiptoLocationId)
end