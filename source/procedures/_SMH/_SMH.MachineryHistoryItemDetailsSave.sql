create procedure --E-03647
--RJM
"_SMH"."MachineryHistoryItemDetailsSave"( 
  in @RowId char(1024) default null,
  in @EquipmentNodeId char(1024) default null,
  in @VesselId integer default null,
  in @EquipmentId integer default null,
  in @Title char(128),
  in @HistoryItemType char(20),
  in @CompletedDateTimestamp date,
  in @PriorityStatus char(25),
  in @LaborHours numeric(10,2),
  in @Narrative long varchar ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-05-18 RKM updated to return RowId exactly as passed in
*/
  declare @MachineryHistoryId integer;
  declare @HistoryItemId bigint;
  declare @TestResultId integer;
  declare @RowVesselId integer;
  declare @RowEquipmentId integer;
  declare @ApplicationId integer;
  set @RowId = "ECO"."CheckNull"(@RowId);
  set @ApplicationId = "SMH"."ApplicationId"();
  set @RowVesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @RowEquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
  set @TestResultId = "SWA"."KeyValuePairParse"(@RowId,'TestResultId');
  set @HistoryItemId = "SWA"."KeyValuePairParse"(@RowId,'HistoryItemId');
  set @VesselId = "ISNULL"(@VesselId,@RowVesselId);
  set @EquipmentId = "ISNULL"(@EquipmentId,@RowEquipmentId);
  if "ECO"."CheckNull"(@EquipmentNodeId) is not null then
    set @VesselId = "SWA"."KeyValuePairParse"(@EquipmentNodeId,'VesselId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentNodeId,'EquipmentId')
  end if;
  if @HistoryItemId < 1000000000000 then
    if @TestResultId is not null then
      set @HistoryItemId = @HistoryItemId+1000000000000
    else
      set @HistoryItemId = @HistoryItemId+2000000000000
    end if
  end if;
  call "SMH"."MachineryHistoryItemDetailsSave"(@ApplicationId,@VesselId,@EquipmentId,@MachineryHistoryId,@HistoryItemId,
  @Title,@CompletedDateTimestamp,@PriorityStatus,
  @LaborHours,@Narrative,@TestResultId,@RowId)
end