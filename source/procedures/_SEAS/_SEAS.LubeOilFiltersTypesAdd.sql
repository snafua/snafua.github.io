create procedure "_SEAS"."LubeOilFiltersTypesAdd"( in @TypeTitle char(15) ) 
result( "AddSucceeded" bit,"TypeId" char(15) ) 
begin
  call "SEAS"."LubeOilFiltersTypesAdd"(@TypeTitle)
end