create procedure "_SEAS"."ChemistryDisplaySettings"()
result( 
  "CommentsHeight" char(10),
  "TreeWidth" char(10),
  "HistoricalWidth" char(10) ) 
begin
  call "SEAS"."ChemistryDisplaySettings"()
end