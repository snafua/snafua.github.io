create procedure "_VTL"."DocumentsVesselsEquipmentInsert"( in @RowId char(1024),in @VesselId integer,in @EquipmentId integer ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."DocumentsVesselsEquipmentInsert"(@RowId,@VesselId,@EquipmentId)
end