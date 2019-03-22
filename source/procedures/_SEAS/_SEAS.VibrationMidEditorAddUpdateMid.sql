create procedure "_SEAS"."VibrationMidEditorAddUpdateMid"( in @PreviousMid integer,in @NewMid integer,in @EquipmentDescription char(80) ) 
begin
  call "SEAS"."VibrationMidEditorAddUpdateMid"(@PreviousMid,@NewMid,@EquipmentDescription)
end