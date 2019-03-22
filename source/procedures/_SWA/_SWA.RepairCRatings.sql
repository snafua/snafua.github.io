create procedure "_SWA"."RepairCRatings"()
result( 
  "CRating" char(2),
  "CratingId" integer ) 
begin
  call "SWA"."RepairCRatings"()
end