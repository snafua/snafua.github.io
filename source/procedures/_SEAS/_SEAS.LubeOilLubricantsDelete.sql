create procedure "_SEAS"."LubeOilLubricantsDelete"( in @LubricantId integer ) 
result( "DeleteSucceeded" bit ) 
begin
  call "SEAS"."LubeOilLubricantsDelete"(@LubricantId)
end