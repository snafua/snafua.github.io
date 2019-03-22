create procedure "_SWA"."EquipmentReportEquipmentScopes"()
result( 
  "EquipmentScopeId" integer,
  "EquipmentScopeName" char(56),
  "Filtered" bit ) 
begin
  call "SWA"."EquipmentReportEquipmentScopes"()
end