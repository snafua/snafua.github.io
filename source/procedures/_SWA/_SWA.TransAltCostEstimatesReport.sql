create procedure "_SWA"."TransAltCostEstimatesReport"( 
  in @VesselClassId integer ) 
result( 
  "EstimateDescription" char(50),
  "EstimateCost" numeric(15,2) ) 
begin
  call "SWA"."TransAltCostEstimatesReport"(@VesselClassId)
end