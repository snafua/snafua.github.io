create procedure "_SWA"."FiltersApplicationsUsersAttributesAddStandard"( 
  in @ApplicationId integer,
  in @FilterId integer,
  in @AttributeId integer,
  in @AttributeValues long varchar ) 
result( 
  "FilterAttributeId" integer,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @Message long varchar;
  declare @Success bit;
  declare @FiltersAttributeId integer;
  set @Success = 1;
  set @Message = 'No Error';
  set @FiltersAttributeId = "SWA"."FiltersApplicationsUsersAttributesAddStandard"(@ApplicationId,@FilterId,@AttributeId,@AttributeValues);
  select @FiltersAttributeId as "FilterAttributeId",
    @Success as "Success",
    @Message as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @Message = "ERRORMSG"();
    set @Success = 0;
    select null as "FilterAttributeId",
      @Success as "Success",
      @Message as "ErrorMessage"
      from "DUMMY"
end