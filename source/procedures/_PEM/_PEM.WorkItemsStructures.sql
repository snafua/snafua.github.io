create procedure "_PEM"."WorkItemsStructures"( 
  in @VesselId integer ) 
result( 
  "SWBS" char(4),
  "SWBSTitle" char(128) ) 
begin
  call "PEM"."WorkItemsStructures"(@VesselId)
end