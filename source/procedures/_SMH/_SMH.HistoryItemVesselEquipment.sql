create procedure "_SMH"."HistoryItemVesselEquipment"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @HistoryItemId integer,
  in @ItemSubType char(20) ) 
result( 
  "TestDescription" char(50),
  "VesselName" char(80),
  "EquipmentName" char(80),
  "CommunicationStatus" bit ) 
begin
  declare @HistoryItemExists bit;
  set @HistoryItemExists = "SMH"."HistoryItemExists"(@VesselId,@HistoryItemId,@ItemSubType);
  if(@HistoryItemId is null) or(@HistoryItemExists = 0) then
    call "SMH"."EquipmentHistoryVesselEquipment"(@VesselId,@EquipmentId,@ItemSubType)
  else
    call "SMH"."HistoryItemVesselEquipment"(@VesselId,@EquipmentId,@HistoryItemId,@ItemSubType)
  end if
end