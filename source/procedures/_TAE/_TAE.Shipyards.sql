create procedure "_TAE"."Shipyards"()
result( 
  "ShipyardId" integer,
  "ShipyardName" char(128),
  "ShipyardStreetAddress" char(512),
  "ShipyardCity" char(128),
  "ShipyardState" char(128),
  "ShipyardPostalCode" char(25),
  "RegionId" integer,
  "RegionDescription" char(128) ) 
begin
  call "TAE"."Shipyards"()
end