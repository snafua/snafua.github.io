create procedure "_VTL"."DocumentsVessels"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "VesselId" smallint,
  "VesselName" char(255),
  "TotalRows" integer ) 
begin call "VTL"."DocumentsVessels"(@RowId)
end