create procedure "_ACM"."WorkListItemsParts"( 
  in @RowId char(256) ) 
result( 
  "RowId" char(1024),
  "PartDescription" char(80),
  "PartNumber" char(40),
  "NavyStockNumber" char(20) ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "ACM"."WorkListItemsParts"(@VesselId,@WorkRequestId)
end