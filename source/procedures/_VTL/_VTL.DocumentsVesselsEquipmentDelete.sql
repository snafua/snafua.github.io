create procedure "_VTL"."DocumentsVesselsEquipmentDelete"( in @RowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."DocumentsVesselsEquipmentDelete"(@RowId)
end