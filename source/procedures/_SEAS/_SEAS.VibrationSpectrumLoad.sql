create procedure "_SEAS"."VibrationSpectrumLoad"()
result( "SpeedApplyTo" long varchar,"IsPreviousTestOverlayed" long varchar ) 
begin
  call "SEAS"."VibrationSpectrumLoad"()
end