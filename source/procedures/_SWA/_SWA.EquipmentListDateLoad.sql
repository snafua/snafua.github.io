create procedure "_SWA"."EquipmentListDateLoad"( 
  in @GetDefault smallint default 1 ) 
result( 
  "DateCode" char(16),
  "DateDescription" char(56),
  "StartDate" char(32),
  "EndDate" char(32),
  "Filtered" smallint ) 
begin
  declare @ApplicationId smallint;
  set @ApplicationId = "SMH"."ApplicationId"();
  call "SWA"."EquipmentListDateLoad"(@ApplicationId,@GetDefault,'HistoryItemTimestamp')
end