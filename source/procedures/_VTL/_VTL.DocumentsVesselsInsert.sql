create procedure "_VTL"."DocumentsVesselsInsert"( in @RowId char(1024),in @NodeId char(1024),in @VesselId integer default null ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."DocumentsVesselsInsert"(@RowId,@NodeId,@VesselId)
end