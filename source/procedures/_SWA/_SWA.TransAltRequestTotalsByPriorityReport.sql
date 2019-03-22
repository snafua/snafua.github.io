create procedure "_SWA"."TransAltRequestTotalsByPriorityReport"( 
  in @VesselClassId integer ) 
result( 
  "Priority" char(50),
  "PriorityCost" numeric(15,2),
  "PriorityIndex" smallint ) 
begin
  call "SWA"."TransAltRequestTotalsByPriorityReport"(@VesselClassId)
end