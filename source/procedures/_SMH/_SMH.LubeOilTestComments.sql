create procedure "_SMH"."LubeOilTestComments"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "AnalystComments" long varchar,
  "SystemComments" long varchar,
  "LabComments" long varchar,
  "EmailMessage" long varchar ) 
begin
  call "SMH"."LubeOilTestComments"(@VesselId,@EquipmentId,@TestResultId)
end