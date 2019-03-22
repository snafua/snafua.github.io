create procedure "_VTL"."RequestDrawingNumberWarn"()
result( 
  "WarningMessage" long varchar ) 
begin
  call "VTL"."RequestDrawingNumberWarn"()
end