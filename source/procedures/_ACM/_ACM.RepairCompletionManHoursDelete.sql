create procedure --JLD
"_ACM"."RepairCompletionManHoursDelete"( 
  in @RowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-05-17 JLD E-03377 B-17750
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  declare @BilletId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  set @BilletId = "SWA"."KeyValuePairParse"(@RowId,'BilletId');
  call "ACM"."RepairCompletionManHoursDelete"(@VesselId,@WorkRequestId,@BilletId)
end