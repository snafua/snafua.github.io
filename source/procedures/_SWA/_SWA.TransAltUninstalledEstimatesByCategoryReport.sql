create procedure "_SWA"."TransAltUninstalledEstimatesByCategoryReport"( 
  in @VesselClassId integer ) 
result( 
  "Category" char(50),
  "CategoryCost" numeric(15,2),
  "CategoryIndex" smallint ) 
begin
  call "SWA"."TransAltUninstalledEstimatesByCategoryReport"(@VesselClassId)
end