create procedure "_SEAS"."LubeOilSMPEditorVesselsEquipment"( in @Lubricants long varchar,in @Equipment long varchar,in @Vessels long varchar,in @Sort long varchar ) 
result( "VesselId" smallint,"VesselName" char(80),"EquipmentId" integer,"EquipmentDescription" char(80),"SamplePointId" integer,"SamplePointDescription" char(80),"LubricantId" integer,"LubricantDescription" char(50) ) 
begin
  call "SEAS"."LubeOilSMPEditorVesselsEquipment"(@Lubricants,@Equipment,@Vessels,@Sort)
end