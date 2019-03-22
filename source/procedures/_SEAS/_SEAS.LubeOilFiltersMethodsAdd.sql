create procedure "_SEAS"."LubeOilFiltersMethodsAdd"( in @MethodTitle char(15) ) 
result( "AddSucceeded" bit,"MethodId" integer ) 
begin
  call "SEAS"."LubeOilFiltersMethodsAdd"(@MethodTitle)
end