create procedure --JLD
"_LIT"."McodeEquipmentAssign"( 
  in @RowId char(1024),
  in @EquipmentRowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2016-10-13 RJM
2018-11-15 JLD D-04194 Updated VesselId to use VesselId from EquipmentRowId
*/
  declare @Success bit;
  declare @ErrorMessage long varchar;
  declare @VesselId integer;
  declare @WorkItemLibraryId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @Success = 1;
  set @VesselId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'VesselId');
  set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemLibraryId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'MaintenanceProcedureId');
  call "PNG"."WorkItemsLibraryVesselsMaintenanceInsertUpdate"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@WorkItemLibraryId);
  select @Success as "Success",
    @ErrorMessage as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    set @Success = 0;
    select @Success as "Success",
      @ErrorMessage as "ErrorMessage"
      from "DUMMY"
end