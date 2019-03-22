create procedure "_PAV"."ShowRemovedWorkItemsSave"( 
  in @ShowRemovedWorkItems bit ) 
result( 
  "ShowRemovedWorkItems" bit,
  "Success" bit,
  "ErrorMessage" char(3000) ) 
begin
  call "PAV"."ShowRemovedWorkItemsSave"(@ShowRemovedWorkItems)
end