create procedure "_SWA"."EquipmentMeterReadings"( 
  in @RowIds long varchar,
  in @ApplicationId integer default null ) 
result( 
  "RowId" char(1024),
  "MeterRowId" char(1024),
  "VesselName" char(80),
  "EquipmentDescription" char(80),
  "Units" char(15),
  "Meter" integer ) 
begin
  call "SWA"."EquipmentMeterReadings"(@RowIds)
end