create procedure "_SWA"."OrderBySave"( 
  in @ApplicationId integer,
  in @OrderBy char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @UserId integer;
  declare @OrderBySettingId integer;
  declare @Success bit;
  declare @ErrorMessage long varchar;
  set @UserId = "SWA"."UserId"();
  set @OrderBySettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'MainGridSort');
  if(@UserId is not null) and(@ApplicationId is not null) then
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@OrderBySettingId,@OrderBy);
    set @Success = 1
  else
    set @Success = 0;
    set @ErrorMessage = 'NULL UserId or ApplicationId is not allowed'
  end if;
  select @Success as "Success",
    @ErrorMessage as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select 0 as "Success",
      @ErrorMessage as "ErrorMessage"
      from "DUMMY"
end