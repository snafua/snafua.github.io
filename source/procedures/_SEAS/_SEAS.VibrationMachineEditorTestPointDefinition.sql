create procedure "_SEAS"."VibrationMachineEditorTestPointDefinition"( in @StandardMachineId integer,in @ComponentCode numeric(4,2),in @OrderId integer ) 
result( "Bearing" char(50),"BearingId" integer,"Location" char(50),"LocationId" char(10),"Orientation" char(3),"OrientationId" char(3),"DemodR" bit,"DemodA" bit,"DemodT" bit,"Low" bit,"High" bit,"RowId" integer,"CanDelete" bit ) 
begin
  call "SEAS"."VibrationMachineEditorTestPointDefinition"(@StandardMachineId,@ComponentCode,@OrderId)
end