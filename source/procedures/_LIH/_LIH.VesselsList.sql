create procedure "_LIH"."VesselsList"( 
  in @RowId char(1024) ) 
result( 
  "VesselId" integer,
  "VesselName" char(128) ) 
begin
  declare @VesselId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  call "LIH"."VesselsList"(@VesselId)
end