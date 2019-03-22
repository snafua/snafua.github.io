create procedure "_SWA"."FiltersApplicationsUsersHistoryRemove"( 
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
  call "SWA"."FiltersApplicationsUsersHistoryRemove"(@ApplicationId,@FilterId);
  select @Success as "Success",
    @Message as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @Message = "ERRORMSG"();
    set @Success = 0;
    select @Success as "Success",
      @Message as "ErrorMessage"
      from "DUMMY"
end