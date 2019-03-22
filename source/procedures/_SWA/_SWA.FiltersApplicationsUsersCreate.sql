create procedure "_SWA"."FiltersApplicationsUsersCreate"( 
  in @ApplicationId integer,
  in @FilterDescription char(128) default null,
  in @AdvancedFilter bit default 0 ) 
result( 
  "FilterId" integer,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @Message long varchar;
  declare @Success bit;
  declare @FilterId integer;
  set @Success = 1;
  set @Message = 'No Error';
  set @FilterId = "SWA"."FiltersApplicationsUsersCreate"(@ApplicationId,@FilterDescription,@AdvancedFilter);
  select @FilterId as "FilterId",
    @Success as "Success",
    @Message as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @Message = "ERRORMSG"();
    set @Success = 0;
    select null as "FilterId",
      @Success as "Success",
      @Message as "ErrorMessage"
      from "DUMMY"
end