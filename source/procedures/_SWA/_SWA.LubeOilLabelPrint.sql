create procedure "_SWA"."LubeOilLabelPrint"( 
  in @VesselRowId char(1024) ) 
result( 
  "LabelRowId" char(1024),
  "VesselId" integer,
  "EquipmentId" integer,
  "MeasPtId" integer,
  "LubeOilSampleId" integer,
  "Vessel" char(9),
  "Machine" char(3),
  "SPID" char(7),
  "Label" char(10),
  "Barcode" char(17),
  "VesselName" char(80),
  "EquipmentDescription" char(80),
  "SamplePoint" char(50),
  "LubeOil" char(50),
  "PFA" char(7),
  "LubricantId" integer ) 
begin
  declare @VesselId integer;
  if "ISNUMERIC"(@VesselRowId) = 1 then
    set @VesselId = @VesselRowId
  else
    set @VesselId = "SWA"."KeyValuePairParse"(@VesselRowId,'VesselId')
  end if;
  call "SWA"."LubeOilLabelPrint"(@VesselId)
end