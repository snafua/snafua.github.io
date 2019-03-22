create procedure "_SWA"."ApplicationsExportsUsersSave"( 
  in @ApplicationId integer,
  in @GridId integer default null,
  in @GroupByColumnRowId char(1024) default null ) 
begin
  declare @ErrorMessage long varchar;
  call "SWA"."ApplicationsExportsUsersSave"(@ApplicationId,@GridId,@GroupByColumnRowId)
end