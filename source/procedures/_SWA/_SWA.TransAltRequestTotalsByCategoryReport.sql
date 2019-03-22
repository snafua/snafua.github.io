create procedure "_SWA"."TransAltRequestTotalsByCategoryReport"( 
  in @VesselClassId integer ) 
result( 
  "Category" char(50),
  "CategoryCost" numeric(15,2),
  "CategoryIndex" smallint ) 
begin
  call "SWA"."TransAltRequestTotalsByCategoryReport"(@VesselClassId)
end