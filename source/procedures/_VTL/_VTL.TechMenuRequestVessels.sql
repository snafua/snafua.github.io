create procedure "_VTL"."TechMenuRequestVessels"( in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "VesselId" smallint,
  "VesselName" char(255),
  "TotalRows" integer ) 
begin
  call "VTL"."TechMenuRequestVessels"(@RowId)
end