create procedure "_SWA"."ModulePropertiesSave"( 
  in @ApplicationId integer,
  in @PropertyName char(1024),
  in @PropertyValue long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @UserId integer;
  declare @PropertyNameSettingId integer;
  declare @Success bit;
  declare @ErrorMessage long varchar;
  set @UserId = "SWA"."UserId"();
  set @PropertyNameSettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,@PropertyName);
  if @UserId is not null and @ApplicationId is not null then
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@PropertyNameSettingId,@PropertyValue);
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