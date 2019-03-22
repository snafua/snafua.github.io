create procedure "_SWA"."ApplicationsExportsUsersClear"( 
  in @ApplicationId integer,
  in @GridId integer default null,
  in @UserId integer default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @ErrorMessage long varchar;
  call "SWA"."ApplicationsExportsUsersClear"(@ApplicationId,@GridId,@UserId);
  select 1 as "Success",'' as "ErrorMessage" from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ErrorMsg"();
    select 0 as "Success",@ErrorMessage as "ErrorMessage" from "DUMMY"
end