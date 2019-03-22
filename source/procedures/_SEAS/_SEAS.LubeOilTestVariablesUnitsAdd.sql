create procedure "_SEAS"."LubeOilTestVariablesUnitsAdd"( in @UnitsTitle char(10) ) 
result( "AddSucceeded" bit ) 
begin
  call "SEAS"."LubeOilTestVariablesUnitsAdd"(@UnitsTitle)
end