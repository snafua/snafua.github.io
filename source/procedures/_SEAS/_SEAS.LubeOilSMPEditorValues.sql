create procedure "_SEAS"."LubeOilSMPEditorValues"( 
  in @StandardMeasurementPointId integer ) 
result( 
  "StandardMeasurementPoint" char(50),
  "TestSlate" char(30),
  "MetaRecord" char(10),
  "TestSlateId" integer ) 
begin
  call "SEAS"."LubeOilSMPEditorValues"(@StandardMeasurementPointId)
end