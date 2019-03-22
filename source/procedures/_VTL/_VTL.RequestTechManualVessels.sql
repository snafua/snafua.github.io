create procedure "_VTL"."RequestTechManualVessels"( in @RowId char(1024),in @NodeId char(1024) ) 
result( 
  "NodeId" char(1024),"NodeTitle" char(1024),"HasChildren" bit,"IsSelected" bit ) 
begin
  call "VTL"."RequestTechManualVessels"(@RowId,@NodeId)
end