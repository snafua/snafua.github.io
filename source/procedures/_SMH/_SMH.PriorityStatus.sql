create procedure --E-03647
--RJM
"_SMH"."PriorityStatus"( 
  in @HistoryId char(1024) default null ) 
result( 
  "PriorityStatus" char(25),
  "IsSelected" bit ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MachineryHistoryId integer;
  declare @NullRowId bit;
  set @VesselId = "SWA"."KeyValuePairParse"(@HistoryId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@HistoryId,'EquipmentId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@HistoryId,'MachineryHistoryId');
  if @MachineryHistoryId is null then
    set @NullRowId = 1
  else
    set @NullRowId = 0
  end if;
  call "SMH"."PriorityStatus"(@VesselId,@EquipmentId,@MachineryHistoryId,@NullRowId)
end