create procedure "_SEAS"."ChemistryToteboardTotals"()
result( 
  "MonthlyTotal" smallint,
  "CurrentTotal" smallint ) 
begin
  call "SEAS"."ChemistryToteboardTotals"()
end