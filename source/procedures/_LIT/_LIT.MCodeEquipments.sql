create procedure "_LIT"."MCodeEquipments"( 
  in @VesselId integer,
  in @RowId char(1024),
  in @MCodeRowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "RowId" char(1024),
  "EquipmentDescription" char(80),
  "Selected" bit ) 
begin
  declare @WorkItemLibraryId integer;
  declare @MaintenanceProcedureId integer;
  set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemLibraryId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@MCodeRowId,'MaintenanceProcedureId');
  call "LIT"."MCodeEquipments"(@VesselId,@WorkItemLibraryId,@MaintenanceProcedureId,@ApplicationId)
end