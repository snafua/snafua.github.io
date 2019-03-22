create procedure "_SEAS"."LubeOilTestVariablesUnitsDelete"( in @UnitsId char(10) ) 
result( "DeleteSucceeded" bit ) 
begin
  call "SEAS"."LubeOilTestVariablesUnitsDelete"(@UnitsId)
end