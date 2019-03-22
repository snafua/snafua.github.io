create procedure "_SEAS"."VibrationMachineEditorTestPointDefinitionSearchGrid"( in @Sort long varchar,in @Filter long varchar ) 
result( "Code" numeric(4,2),"Type" char(8),"Desc" char(250),"MachineOrientationSelected" char(1),"ComponentId" numeric(4,2),"PickupCode" char(10),"RowId" numeric(4,2) ) 
begin
  call "SEAS"."VibrationMachineEditorTestPointDefinitionSearchGrid"(@Sort,@Filter)
end