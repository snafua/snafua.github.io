create procedure "_PNG"."LaunchServiceOrder"( 
  in @VesselId integer,
  in @AvailabilityId integer ) 
result( 
  "RepSiteId" varchar(30),
  "WpRepSiteId" varchar(30),
  "WpSeq" integer,
  "VesselId" integer,
  "AvaId" integer,
  "AvaType" char(15),
  "AvaCode" char(1),
  "ContractNo" char(25),
  "ShipUic" char(25),
  "AvaDates" char(30),
  "ShipName" varchar(80),
  "ContractType" char(15) ) 
begin
  call "PNG"."LaunchServiceOrder"(@VesselId,@AvailabilityId)
end