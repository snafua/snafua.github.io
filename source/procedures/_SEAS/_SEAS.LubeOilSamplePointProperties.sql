create procedure "_SEAS"."LubeOilSamplePointProperties"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "VesselName" char(80),"EquipmentName" char(80),"SamplePointName" char(80),"SamplePointId" integer,"HSC" char(12),"EquipmentFunction" char(80),"Lubricant" char(80),"SumpVolume" integer,"SampleVolume" integer,"StandardMeasurementPoint" char(80),"WMCEquipment" char(30),"WMCService" char(80),"WMCManufacturer" char(30),"WMCModel" char(30),"WMCProduct" char(23),"FilterName" char(80),"FilterType" char(15),"FilterMethod" char(15),"FilterRating" char(15) ) 
-- WHY"?"
-- "?""?"
begin
  call "SEAS"."LubeOilSamplePointProperties"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end