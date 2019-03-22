create procedure "_SEAS"."LubeOilFiltersTypesDelete"( in @TypeId char(15) ) 
result( "DeleteSucceeded" bit ) 
begin
  call "SEAS"."LubeOilFiltersTypesDelete"(@TypeId)
end