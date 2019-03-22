create procedure "_PNG"."LaunchContract"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "WpRepSiteId" varchar(30),
  "WpSeq" integer,
  "VesselId" integer,
  "AvaId" integer,
  "AvaType" char(15),
  "AvaCode" char(1),
  "ContractNo" char(25),
  "ContractType" char(15) ) 
begin
  call "PNG"."LaunchContract"(@VesselId,@ContractId)
end