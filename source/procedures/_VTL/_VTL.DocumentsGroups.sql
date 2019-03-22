create procedure "_VTL"."DocumentsGroups"( in @GroupNumber char(3) default null ) 
result( 
  "GroupNumber" char(3),
  "GroupDisplay" char(106) ) 
begin
  call "VTL"."DocumentsGroups"(@GroupNumber)
end