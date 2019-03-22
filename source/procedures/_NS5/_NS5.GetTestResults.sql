create procedure "_NS5"."GetTestResults"()
result( "VesselId" integer,"EquipmentId" integer,"TestResultId" integer ) 
begin
  call "NS5"."GetTestResults"()
end