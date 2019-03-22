create procedure --RJM 2013-08-01
"_SEAS"."FuelOilPreferencesVariableTree"()
result( 
  "Id" integer,
  "Text" char(50) ) 
begin
  call "SEAS"."FuelOilPreferencesVariableTree"()
end