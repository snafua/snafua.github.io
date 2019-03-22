create procedure "_SMH"."VibrationTestsComments"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @CommentId long varchar ) 
result( 
  "ManualAnalysis" long varchar,
  "ExpertSystem" long varchar,
  "ScreeningSheet" long varchar ) 
begin
  declare @TestResultId integer;
  select top 1 start at 3 "String"
    into @TestResultId from "ECO"."STR_Split"(@CommentId,'_');
  call "SMH"."VibrationTestsComments"(@VesselId,@EquipmentId,@TestResultId)
end