create procedure "_SEAS"."LubeOilLubricantsTypesAdd"( in @TypeTitle char(10) ) 
result( "AddSucceeded" bit ) 
begin
  call "SEAS"."LubeOilLubricantsTypesAdd"(@TypeTitle)
end