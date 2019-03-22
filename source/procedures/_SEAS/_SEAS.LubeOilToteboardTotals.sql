create procedure "_SEAS"."LubeOilToteboardTotals"()
result( "RequiresAnalysis" integer,"ReadyForMessage" integer,"AwaitingFerrogram" integer ) 
begin
  call "SEAS"."LubeOilToteboardTotals"()
end