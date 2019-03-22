create procedure --E-03647
--RJM
"_SMH"."MaintenanceLevel"( 
  in @RowId char(1024) ) 
result( 
  "MaintenanceLevel" char(2) ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  set @RowId = "ECO"."CheckNull"(@RowId);
  if @RowId is not null then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId')
  end if;
  select
    "SAMM"."F_SP2GetEquipmentMaintenanceLevelCode"(
    @VesselId,
    @EquipmentId) as "MaintenanceLevel"
    from "DUMMY"
end