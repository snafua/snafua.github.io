create procedure "_SEAS"."VibrationMidEditorLocationOptions"( in @Components long varchar ) 
result( "Text" char(50),"Id" char(50) ) 
begin
  call "SEAS"."VibrationMidEditorLocationOptions"(@Components)
end