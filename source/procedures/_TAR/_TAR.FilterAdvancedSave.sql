create procedure "_TAR"."FilterAdvancedSave"( 
  in @Module char(128),
  in @AndOr integer,
  in @JSONValues long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @Success bit;
  declare @ErrorMessage long varchar;
  declare @LogicalOperator char(5);
  set @Success = 1;
  set @ErrorMessage = null;
  if @AndOr = 1 then set @LogicalOperator = 'AND'
  else set @LogicalOperator = 'OR' end if;
  call "TAR"."FilterAdvancedSaveJSON"(@Module,@LogicalOperator,@JSONValues);
  commit work;
  select @Success,@ErrorMessage from "DUMMY"
exception
  when others then
    set @Success = 0;
    set @ErrorMessage = 'Error: ' || sqlcode || '; ' || "ERRORMSG"();
    select @Success,@ErrorMessage from "DUMMY"
end