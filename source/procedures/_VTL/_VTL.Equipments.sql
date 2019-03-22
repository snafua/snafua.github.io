create procedure "_VTL"."Equipments"( in @NodeId char(1024),in @SearchQuery long varchar default null,in @VesselId integer ) 
result( "NodeId" char(1024),"NodeTitle" char(1024),"HasChildren" bit ) 
begin
  call "VTL"."Equipments"(@NodeId,@SearchQuery,@VesselId)
end