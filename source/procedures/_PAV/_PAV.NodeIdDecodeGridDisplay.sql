create function "_PAV"."NodeIdDecodeGridDisplay"( 
  in @NodeId char(1024) ) 
returns char(25)
begin
  return("PAV"."NodeIdDecodeGridDisplay"(@NodeId))
end