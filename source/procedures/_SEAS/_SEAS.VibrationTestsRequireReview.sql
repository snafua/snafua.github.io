create procedure "_SEAS"."VibrationTestsRequireReview"( 
  in @Vessels long varchar default null,
  in @Sort long varchar default null,
  in @Filter long varchar default null ) 
result( "VesselId" integer,"VesselName" char(80),"TestResultId" integer,"TestDate" char(16),"TestSeverityIndex" integer,"TestSeverityDescription" char(20),"EquipmentId" integer,"EquipmentDescription" char(80),"StandardEquipmentId" integer,"CurrentUser" char(85),"CurrentStatus" char(20),"TestIsLocked" bit ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTestsRequireReview"(@Vessels,@Sort,@Filter)
end