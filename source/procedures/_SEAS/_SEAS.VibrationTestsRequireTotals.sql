create procedure "_SEAS"."VibrationTestsRequireTotals"( 
  in @Vessels long varchar default null,
  in @Filter long varchar default null ) 
result( "NeedsAnalysis" integer,"NeedsFinalReview" integer,"NeedsManualAnalysis" integer ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTestsRequireTotals"(@Vessels,@Filter)
end