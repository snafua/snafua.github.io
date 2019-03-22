create procedure "_PNG"."VRRLogDiagnosticGrid"( 
  in @VesselId integer,
  in @WorkRequestId integer ) 
result( 
  "ItemType" char(20),
  "ItemName" char(25),
  "ItemValue" char(50) ) 
begin
  call "PNG"."VRRLogDiagnosticGrid"(@VesselId,@WorkRequestId)
end