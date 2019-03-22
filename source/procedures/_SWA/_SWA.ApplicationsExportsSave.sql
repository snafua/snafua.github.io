create procedure "_SWA"."ApplicationsExportsSave"( 
  in @ApplicationId integer,
  in @ColumnData long varchar,
  in @HeaderValues long varchar default null,
  in @GroupByColumnRowId char(1024) default null,
  in @Styles long varchar default null,
  in @GridId integer default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @ErrorMessage long varchar;
  if @GridId is null then
    set @GridId = "SWA"."ApplicationsExportsGridIdEx"(@ApplicationId)
  end if;
  call "_SWA"."ApplicationsExportsUsersSave"(@ApplicationId,@GridId,@GroupByColumnRowId);
  call "_SWA"."ApplicationsExportsUsersColumnsSave"(@ColumnData,@ApplicationId,@GridId);
  if @HeaderValues is not null then call "_SWA"."ApplicationsExportsUsersHeadersSave"(@ApplicationId,@HeaderValues,@GridId) end if;
  if @Styles is not null then call "_SWA"."ApplicationsExportsUsersStylesSave"(@ApplicationId,@Styles,@GridId) end if;
  select 1 as "Success",'' as "ErrorMessage" from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ErrorMsg"();
    select 0 as "Success",@ErrorMessage as "ErrorMessage" from "DUMMY"
end