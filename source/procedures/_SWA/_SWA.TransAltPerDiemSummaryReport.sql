create procedure "_SWA"."TransAltPerDiemSummaryReport"( 
  in @VesselClassId integer ) 
result( 
  "Title" char(128),
  "CostType" char(80),
  "Cost" numeric(15,2) ) 
begin
  call "SWA"."TransAltPerDiemSummaryReport"(@VesselClassId)
end