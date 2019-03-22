create procedure "_PAV"."SourceItemAssign"( 
  in @DestinationRowId char(256),
  in @SourceRowIdJSON long varchar ) 
result( "Success" bit,"ErrorMessage" long varchar ) 
begin
  declare @ErrorMsg long varchar;
  set @ErrorMsg = '';
  call "PAV"."SourceItemAssign"(@DestinationRowId,@SourceRowIdJSON);
  select 1 as "Success",'' as "ErrorMessage"
exception
  when others then
    set @ErrorMsg = "ERRORMSG"();
    select 0 as "Success",@ErrorMsg as "ErrorMessage"
end