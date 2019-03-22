create procedure "_SEAS"."LubeOilConfigSMPGrid"( in @Sort long varchar,in @Filter long varchar ) 
result( "StandardMeasurementPointId" integer,"StandardMeasurementPoint" char(50),"UsedBy" integer ) 
begin
  call "SEAS"."LubeOilConfigSMPGrid"(@Sort,@Filter)
end