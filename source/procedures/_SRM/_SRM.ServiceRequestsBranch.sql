create procedure "_SRM"."ServiceRequestsBranch"( in @NodeId char(256) default null ) 
result( "NodeId" char(256),"NodeTitle" char(128),"HasChildren" smallint,"IsExpanded" smallint,"IsSelected" smallint,"PersonnelStatus" char(10) ) 
begin
  call "SRM"."ServiceRequestsBranch"(@NodeId)
end