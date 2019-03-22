create procedure "_SWA"."ApplicationsExportsGroupableColumns"( 
  in @ApplicationId integer,
  in @GridId integer default null ) 
result( 
  "RowId" char(256),
  "ColumnName" char(256),
  "DisplayName" char(256),
  "IsSelected" bit ) 
begin
  call "SWA"."ApplicationsExportsGroupableColumns"(@ApplicationId,@GridId)
end