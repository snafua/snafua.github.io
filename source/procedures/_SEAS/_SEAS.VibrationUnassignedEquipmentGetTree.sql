create procedure "_SEAS"."VibrationUnassignedEquipmentGetTree"( in @NodeId char(30) ) 
result( "NodeId" char(30),"NodeText" char(80),"IsLeaf" bit ) 
begin
  call "SEAS"."VibrationUnassignedEquipmentGetTree"(@NodeId)
end