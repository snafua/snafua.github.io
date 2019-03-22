create procedure "_SWA"."TransAltPrioritySummaryReport"( 
  in @VesselClassId integer ) 
result( 
  "Title" char(50),
  "UrgentCost" numeric(15,2),
  "MandatoryCost" numeric(15,2),
  "ImportantCost" numeric(15,2),
  "RoutineCost" numeric(15,2),
  "UnprioritizedCost" numeric(15,2) ) 
begin
  call "SWA"."TransAltPrioritySummaryReport"(@VesselClassId)
end