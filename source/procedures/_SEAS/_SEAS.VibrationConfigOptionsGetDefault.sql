create procedure "_SEAS"."VibrationConfigOptionsGetDefault"()
result( "GraphType" long varchar,"Location" long varchar,"Tests" long varchar,"FreqRange" long varchar,"AxisSelection" long varchar,"ShowFreq" long varchar,"ShowAvg" long varchar,"ShowExceedance" long varchar,"AmpAxis" long varchar,"AmpScaling" long varchar,"AmpUnits" long varchar,"SubUnits" long varchar,"AmpType" long varchar,"FreqUnits" long varchar,"FreqScaling" long varchar,"AmpMin" long varchar,"AmpMax" long varchar,"FreqMin" long varchar,"FreqMax" long varchar ) 
begin
  call "SEAS"."VibrationConfigOptionsGetDefault"()
end