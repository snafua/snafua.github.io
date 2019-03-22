create procedure "_SWA"."EquipmentReportEquipmentLoad"( 
  in @EquipmentScopeId integer default 1,
  in @VesselIds long varchar default null ) 
result( 
  "EquipmentDescription" char(80),
  "EquipmentRowIds" long varchar ) 
begin
  if @VesselIds is null then
    set @VesselIds = '*'
  end if;
  call "SWA"."EquipmentReportEquipmentLoad"(@EquipmentScopeId,@VesselIds)
end