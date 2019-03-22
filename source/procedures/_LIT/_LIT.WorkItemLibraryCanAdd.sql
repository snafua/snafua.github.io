create procedure "_LIT"."WorkItemLibraryCanAdd"( 
  in @NodeId char(256) ) 
result( 
  "CanAdd" bit ) 
begin
  call "LIT"."WorkItemLibraryCanAdd"(@NodeId)
end