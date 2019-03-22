create procedure "_SEAS"."LubeOilSMPEditorVessels"( in @Lubricants long varchar,in @Equipment long varchar ) 
result( "VesselId" integer,"VesselName" char(80) ) 
begin
  call "SEAS"."LubeOilSMPEditorVessels"(@Lubricants,@Equipment)
end