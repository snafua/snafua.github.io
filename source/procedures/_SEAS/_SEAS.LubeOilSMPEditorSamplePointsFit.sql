create procedure "_SEAS"."LubeOilSMPEditorSamplePointsFit"( in @SamplePoints long varchar ) 
result( "SamplePointId" long varchar,"Fit" real ) 
begin
  call "SEAS"."LubeOilSMPEditorSamplePointsFit"(@SamplePoints)
end