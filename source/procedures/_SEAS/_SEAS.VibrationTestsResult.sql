create procedure "_SEAS"."VibrationTestsResult"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "VesselName" char(120),"EquipmentDescription" char(120),"StandardEquipmentId" integer,"DataCollectionTimestamp" timestamp,"ExpertSystemTimestamp" timestamp,"ManualAnalysisStatus" char(20),"VibrationTestIsLocked" integer,"IsRefreshed" bit,"ReviewCapability" bit,"ReviewMode" bit,"OverrideChecked" bit,"AnalysisResults" long varchar,"AnalysisComments" long varchar ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTestsResult"(@VesselId,@EquipmentId,@TestResultId)
end