create procedure --JLD
"_ACM"."RepairCompletionInsertUpdate"( 
  in @RowId char(128),
  in @WorkListItemDate timestamp default null,
  in @CompletionDate timestamp default null,
  in @TestResultValid bit default 0,
  in @CloseOutNotes long varchar default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-05-02 JLD E-03377 B-17750 Corrective Maintenance Complete
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  if(@WorkListItemDate is null) then
    set @WorkListItemDate = current utc timestamp
  end if;
  if(@CompletionDate is null) then
    set @CompletionDate = current utc timestamp
  end if;
  call "ACM"."RepairCompletionInsertUpdate"(@VesselId,@WorkRequestId,@WorkListItemDate,@CompletionDate,@TestResultValid,@CloseOutNotes)
end