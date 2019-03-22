create procedure "_VTL"."DocumentsVesselsLocationDelete"( in @RowId char(1024),in @VTLVesselId smallint ) 
result( "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."DocumentsVesselsLocationDelete"(@RowId,@VTLVesselId)
end