create procedure "_SWA"."ApplicationsExportsColumnsList"( 
  in @ApplicationId integer,
  in @GridId integer default null ) 
result( 
  "RowId" char(1024),
  "ColumnName" char(256),
  "DisplayName" char(256),
  "ColumnOrder" integer,
  "IsSelected" bit ) 
begin
  call "SWA"."ApplicationsExportsColumnsList"(@ApplicationId,@GridId)
end