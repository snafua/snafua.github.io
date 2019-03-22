create procedure "_SWA"."UsersFiltersSaveAs"( 
  in @ApplicationId integer,
  in @Description char(128) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @FilterId integer;
  declare @UserId integer;
  declare @ErrorMessage long varchar;
  set @Description = "TRIM"(@Description);
  set @UserId = "SWA"."UsersId"();
  set @FilterId = "SWA"."UsersActiveFilter"(@ApplicationId);
  call "SWA"."UsersFiltersUpdate"(@UserId,@FilterId,'Favorite',@Description);
  select 1 as "Success",'' as "ErrorMessage" from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ErrorMsg"();
    select 0 as "Success",@ErrorMessage as "ErrorMessage" from "DUMMY"
end