create procedure "_SWA"."SmartVesselInspections"( 
  in @ApplicationId integer default null,
  in @RowId char(1024) default null,
  in @VesselId integer default null ) 
result( 
  "VesselId" integer,
  "VesselName" char(80),
  "InspectionDate" char(20),
  "InspectionId" integer ) 
begin
  if @RowId is not null then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
  end if;
  call "SWA"."SmartVesselInspections"(@ApplicationId,@VesselId)
end