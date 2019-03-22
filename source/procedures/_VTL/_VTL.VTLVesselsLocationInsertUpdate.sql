create procedure "_VTL"."VTLVesselsLocationInsertUpdate"( in @RowId char(1024),in @VTLVesselId smallint,in @Location char(100),in @Quantity integer ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."VTLVesselsLocationInsertUpdate"(@RowId,@VTLVesselId,@Location,@Quantity)
end