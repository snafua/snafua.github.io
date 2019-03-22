create procedure "_SEAS"."FuelOilUserNotesSave"( 
  in @Notes long varchar default '' ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilUserNotesSave"(@Notes)
end