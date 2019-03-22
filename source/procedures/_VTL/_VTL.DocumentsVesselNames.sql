create function "_VTL"."DocumentsVesselNames"( in @VesselIds long varchar ) 
returns long varchar
begin
  declare @VesselNames long varchar;
  set @VesselNames = "VTL"."DocumentsVesselNames"(@VesselIds);
  return(@VesselNames)
end