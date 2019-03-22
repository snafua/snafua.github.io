create procedure "_AWB"."WorkbookQuickEditLoad"( 
  in @RowIds long varchar,
  in @Action char(25) default 'Complete' ) 
result( 
  "CompletionDate" char(10),
  "ActualHours" char(10),
  "ItemComments" long varchar ) 
begin
  if @Action = 'Complete' then
    call "AWB"."WorkbookQuickEditLoadComplete"(@RowIds)
  end if
end