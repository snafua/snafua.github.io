create function "_SRM"."ServiceRequestsVesselNames"( in @VesselIds long varchar ) 
returns long varchar
begin
  declare @VesselNames long varchar;
  set @VesselNames = "SRM"."ServiceRequestsVesselNames"(@VesselIds);
  return(@VesselNames)
end