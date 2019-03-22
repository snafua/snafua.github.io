create procedure "_PEM"."WorkItemsModificationsStatuses"()
result( 
  "WorkItemModStatus" char(25) ) 
begin
  call "PEM"."WorkItemsModificationsStatuses"()
end