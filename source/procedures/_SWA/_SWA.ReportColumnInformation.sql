create procedure "_SWA"."ReportColumnInformation"( 
  in @DBProcedure char(256) ) 
result( 
  "ColumnName" char(256),
  "ColumnTitle" char(256),
  "ColumnWidth" integer,
  "ColumnAlignment" char(15),
  "ColumnType" char(15),
  "ColumnFormat" char(25) ) 
begin
  call "SWA"."ReportColumnInformation"(@DBProcedure)
end