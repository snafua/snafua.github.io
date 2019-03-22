create procedure "_LIH"."WorkItemsVesselsInsert"( 
  in @RowId char(256) ) 
begin
  -- Not even sure this procedure even gets used anymore
  declare @VesselId smallint;
  declare @WorkItemId integer;
  call "LIH"."RowIdDecode"(@RowId,@VesselId,@WorkItemId);
  call "LIH"."WorkItemsVesselsInsert"(@VesselId,@WorkItemId)
end