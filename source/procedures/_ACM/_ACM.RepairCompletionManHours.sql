create procedure --JLD
"_ACM"."RepairCompletionManHours"( 
  in @RowId char(128) ) 
result( 
  "RowId" char(128),
  "Billet" char(50),
  "StraightHours" integer,
  "OvertimeHours" integer ) 
begin
  /*
2018-05-07 JLD E-03377 B-17750
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "ACM"."RepairCompletionManHours"(@VesselId,@WorkRequestId)
end