create function "_SEAS"."VibrationEquipmentEditorIsBarcodeUnique"( in @VesselId smallint,in @Barcode integer ) 
returns bit
begin
  declare @Result bit;
  set @Result = "SEAS"."VibrationEquipmentEditorIsBarcodeUnique"(@VesselId,@Barcode);
  return(@Result)
end