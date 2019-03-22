create procedure "_SEAS"."LubeOilFiltersDelete"( in @FilterId integer ) 
result( "DeleteSucceeded" bit ) 
begin
  call "SEAS"."LubeOilFiltersDelete"(@FilterId)
end