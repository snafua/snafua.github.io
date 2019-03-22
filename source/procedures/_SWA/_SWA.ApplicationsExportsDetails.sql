create procedure "_SWA"."ApplicationsExportsDetails"( 
  in @ApplicationId integer,
  in @GroupByColumnRowId char(1024) default null,
  in @GridId integer default null ) 
result( 
  "ServiceName" char(256),
  "FileName" char(256),
  "FileType" char(256),
  "GroupBy" char(256) ) 
begin
  call "SWA"."ApplicationsExportsDetails"(@ApplicationId,@GroupByColumnRowId,@GridId)
end