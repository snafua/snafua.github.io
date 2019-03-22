create procedure "_VTL"."DocumentsLocations"( in @PhysicalLocation char(255) default null ) 
result( 
  "PhysicalLocationId" integer,
  "PhysicalLocation" char(255) ) 
begin
  call "VTL"."DocumentsLocations"(@PhysicalLocation)
end