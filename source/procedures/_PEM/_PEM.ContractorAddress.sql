create procedure "_PEM"."ContractorAddress"( 
  in @EntityId integer ) 
result( 
  "AddressLineOne" char(128),
  "AddressLineTwo" char(128),
  "AddressLineThree" char(128),
  "AddressLineFour" char(128),
  "City" char(128),
  "StateProvince" char(128),
  "ZipPostalCode" char(15) ) 
begin
  call "PNG"."ContractorAddress"(@EntityId)
end