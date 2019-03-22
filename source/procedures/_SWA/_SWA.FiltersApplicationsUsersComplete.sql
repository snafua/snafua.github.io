create procedure "_SWA"."FiltersApplicationsUsersComplete"( 
  in @ApplicationId integer,
  in @FilterId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @Message long varchar;
  declare @Success bit;
  set @Success = 1;
  set @Message = 'No Error';
  call "SWA"."FiltersApplicationsUsersComplete"(@ApplicationId,@FilterId);
  select @Success as "Success",
    @Message as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @Message = "ERRORMSG"();
    set @Error = 0;
    select @Success as "Success",
      @Message as "ErrorMessage"
      from "DUMMY"
end