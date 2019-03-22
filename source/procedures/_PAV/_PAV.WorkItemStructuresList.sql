create procedure "_PAV"."WorkItemStructuresList"()
result( 
  "SWBS" char(4),
  "SWBSTitle" char(128) ) 
begin
  call "PAV"."WorkItemStructuresList"()
end