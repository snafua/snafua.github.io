create procedure "_SEAS"."UserNotesSave"( in @Notes long varchar default '' ) 
begin
  call "SEAS"."UserNotesSave"(@Notes)
end