create procedure "_VTL"."NodeTypeSelect"()
result( 
  "NodeType" char(10),"NodeId" char(256) ) 
begin
  call "VTL"."NodeTypeSelect"()
end