create procedure --E-04562
--RJM
"_SWA"."VesselMaintenanceReport"( 
  in @VesselId integer ) 
result( 
  "PM" char(10),
  "VesselClass" char(20),
  "VesselName" char(80),
  "MaintenanceType" char(17),
  "SWBS" char(4),
  "WorkItemTitle" char(128),
  "Spec" char(1),
  "HSC" char(12),
  "VesselEquipmentDesc" char(80),
  "Level" char(20),
  "MaintenanceProcedureTitle" char(50),
  "MaintenanceCode" char(4),
  "ItemType" char(20),
  "CalculatedItemType" char(20),
  "Interval" char(128),
  "MaintenanceCompletionDate" date,
  "MaintenanceCompletionHours" integer,
  "CurrentRunHours" integer,
  "RunHoursPerMonth" numeric(10,1),
  "MaintenanceScheduleDate" date,
  "AppxDue" date,
  "TaskCode" char(28),
  "MaintenanceStatus" char(28),
  "ActionNeeded" char(28),
  "ClassesAssigned" long varchar,
  "WorkItemNumber" char(25),
  "WorkItemLibraryId" integer,
  "VesselId" integer,
  "EquipmentId" integer,
  "MaintenanceProcedureId" integer,
  "BilletId" integer,
  "IAChecked" integer,
  "MaintenanceProcedureType" char(15),
  "VesselLibraryItemActive" integer,
  "MaintenanceIsActive" integer ) 
begin
  /*
2018-09-21 RJM E-04562 E-04572 B-19361
*/
  call "SAMM"."PMIAStatusVessel"(@VesselId)
end