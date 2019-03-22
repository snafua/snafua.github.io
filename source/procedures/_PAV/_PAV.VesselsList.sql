create procedure -- Procedure _PAV.VesselsList.sql
-- RJM 2013-06-12 To populate dropdown for vessels by user
"_PAV"."VesselsList"()
result( 
  "VesselId" integer,
  "VesselName" char(128) ) 
begin
  call "PAV"."VesselsList"()
end