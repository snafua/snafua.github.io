create procedure "_SEAS"."LubeOilLubricantsTypesDelete"( in @TypeId char(10) ) 
result( "DeleteSucceeded" bit ) 
begin
  call "SEAS"."LubeOilLubricantsTypesDelete"(@TypeId)
end