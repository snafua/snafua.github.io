create procedure "_SEAS"."VibrationTestPropertiesLoad"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer ) 
result( "VesselName" char(80),"SystemDesc" char(80),"EquipmentDesc" char(80),"StandardEquipmentDesc" char(80),"StandardEquipmentId" integer,"Priority" char(20),"Severity" char(20),"TestDate" char(16),"AnalysisComplete" bit ) 
begin
  call "SEAS"."VibrationTestPropertiesLoad"(@VesselId,@EquipmentId,@TestResultId)
end