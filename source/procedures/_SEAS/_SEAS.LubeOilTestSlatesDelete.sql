create procedure "_SEAS"."LubeOilTestSlatesDelete"( in @TestSlateId integer ) 
result( "DeleteSucceeded" bit ) 
begin
  call "SEAS"."LubeOilTestSlatesDelete"(@TestSlateId)
end