create procedure --JLD
"_ACM"."RepairCompletionManHoursInsertUpdate"( 
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
  declare @ManHourItemNo integer;
  declare @RegularHours integer;
  declare @OverTimeHours integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  set @BilletId = "SWA"."KeyValuePairParse"(@RowId,'BilletId');
  set @ManHourItemNo = "ECO"."CheckNull"("SWA"."KeyValuePairParse"(@RowId,'ManHourItemNo'));
  set @RegularHours = "ECO"."CheckNull"("SWA"."KeyValuePairParse"(@RowId,'RegularHours'),0);
  set @OverTimeHours = "ECO"."CheckNull"("SWA"."KeyValuePairParse"(@RowId,'OverTimeHours'),0);
  call "ACM"."RepairCompletionManHoursInsertUpdate"(@VesselId,@WorkRequestId,@BilletId,@ManHourItemNo,@RegularHours,@OverTimeHours)
end