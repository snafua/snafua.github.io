create procedure "_LIT"."SavedOrderByInsertUpdate"( 
  in @OrderBy char(256) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @Success bit;
  declare @ErrorMessage long varchar;
  set @Success = 1;
  set @ErrorMessage = null;
  call "LIT"."SavedOrderByInsertUpdate"(@OrderBy);
  select @Success as "Success",
    @ErrorMessage as "ErrorMessage"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    set @Success = 0;
    select @Success as "Success",
      @ErrorMessage as "ErrorMessage"
end