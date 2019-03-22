create procedure "_VTL"."DocumentsCategoryDelete"( in @RowId char(1024),in @DocumentCategoryId integer ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."DocumentsCategoryDelete"(@RowId,@DocumentCategoryId)
end