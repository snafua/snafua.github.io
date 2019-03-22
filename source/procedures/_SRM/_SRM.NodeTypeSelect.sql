create procedure "_SRM"."NodeTypeSelect"()
result( "NodeType" char(10),
  "NodeId" char(256) ) 
begin
  call "SRM"."NodeTypeSelect"()
end