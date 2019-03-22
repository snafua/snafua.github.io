create procedure "_SEAS"."VibrationMachineEditorTestPointDefinitionTree"( in @StandardMachineId integer ) 
result( "LocId" numeric(4,2),"OrderId" integer,"LocText" char(16),"IsLeaf" bit,"Code" numeric(4,2),"Desc" char(250),"PickupCode" char(10),"Orientation" char(1),"CanDelete" bit,"Bearings" long varchar ) 
begin
  call "SEAS"."VibrationMachineEditorTestPointDefinitionTree"(@StandardMachineId)
end