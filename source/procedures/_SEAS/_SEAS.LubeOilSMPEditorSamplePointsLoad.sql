create procedure "_SEAS"."LubeOilSMPEditorSamplePointsLoad"( in @StandardMeasurementPointId integer,in @Sort long varchar ) 
result( "VesselName" char(80),"EquipmentDescription" char(80),"SamplePointDescription" char(80),"Lubricant" char(50),"Fit" char(15),"VesselId" smallint,"EquipmentId" integer,"SamplePointId" integer ) 
begin
  call "SEAS"."LubeOilSMPEditorSamplePointsLoad"(@StandardMeasurementPointId,@Sort)
end