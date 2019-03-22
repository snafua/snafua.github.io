create procedure "_PNG"."WorkItemsPartsOrdersPriorities"( 
  in @RowId char(256) default null ) 
result( 
  "PriorityId" integer,
  "PriorityName" char(80),
  "IsSelected" bit ) 
begin
  call "PNG"."WorkItemsPartsOrdersPriorities"(@RowId)
end