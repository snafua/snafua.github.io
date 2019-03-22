create procedure "_SEAS"."FuelOilToteboardTotals"()
result( 
  "RequiresAnalysis" integer,
  "ReadyForMessage" integer ) 
begin
  call "SEAS"."FuelOilToteboardTotals"()
end