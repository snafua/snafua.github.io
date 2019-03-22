create procedure "_VTL"."GetShipApplicability"()
result( 
  "ShipApplicabilityId" integer,
  "ShipApplicability" varchar(50) ) 
begin
  call "VTL"."GetShipApplicability"()
end