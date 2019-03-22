create procedure "_SWA"."TransAltUninstalledEstimatesByPriorityReport"( 
  in @VesselClassId integer ) 
result( 
  "Priority" char(50),
  "PriorityCost" numeric(15,2),
  "PriorityIndex" smallint ) 
begin
  call "SWA"."TransAltUninstalledEstimatesByPriorityReport"(@VesselClassId)
end