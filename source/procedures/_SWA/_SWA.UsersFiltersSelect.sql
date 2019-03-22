create procedure "_SWA"."UsersFiltersSelect"( 
  in @FilterId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @ErrorMessage long varchar;
  call "SWA"."UsersFiltersSelect"("SWA"."UsersId"(),@FilterId);
  select 1 as "Success",'' as "ErrorMessage"
exception
  when others then
    set @ErrorMessage = "ErrorMsg"();
    select 0 as "Success",@ErrorMessage
end