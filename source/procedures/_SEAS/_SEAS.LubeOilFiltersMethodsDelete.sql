create procedure "_SEAS"."LubeOilFiltersMethodsDelete"( in @MethodId char(15) ) 
result( "DeleteSucceeded" bit ) 
begin
  call "SEAS"."LubeOilFiltersMethodsDelete"(@MethodId)
end