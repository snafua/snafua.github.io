create procedure "_SWA"."TransAltCategorySummaryReport"( 
  in @VesselClassId integer ) 
result( 
  "Title" char(50),
  "SafetyCost" numeric(15,2),
  "MissionCost" numeric(15,2),
  "RegulatoryCost" numeric(15,2),
  "ReliabilityCost" numeric(15,2),
  "SupportabilityCost" numeric(15,2),
  "QualityOfLifeCost" numeric(15,2),
  "EnergyConservationCost" numeric(15,2),
  "UncategorizedCost" numeric(15,2) ) 
begin
  call "SWA"."TransAltCategorySummaryReport"(@VesselClassId)
end