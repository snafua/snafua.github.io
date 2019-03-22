create procedure "_VTL"."DocumentsVesselInsert"( in @RowId char(1024),in @VesselId integer ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."DocumentsVesselInsert"(@RowId,@VesselId)
end