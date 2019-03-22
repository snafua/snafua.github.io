create procedure "_SHC"."EquipmentStatisticsLoad"( 
  in @NodeId char(256) default null,
  in @OrderBy char(256) default null,
  in @IsLimited bit default 1 ) 
result( 
  "VesselId" integer,
  "EquipmentId" integer,
  "VesselName" char(128),
  "EquipmentName" char(128),
  "StatisticsLastUpdated" char(25),
  "MaintenanceLevel" char(20),
  "MTBR" integer,
  "ClassDaysBetweenRepair" integer,
  "EquipmentAgeInDays" integer,
  "EquipmentRepairCount" integer,
  "MaintenanceScheduleCount" integer,
  "MaintenanceCompleteCount" integer,
  "MaintenanceIncompleteCount" integer,
  "MaintenanceDeferredCount" integer,
  "MaintenanceTotalCount" integer,
  "MaintenanceCompliance" integer,
  "ClassCompliance" integer,
  "MaintenanceCompletion" integer,
  "ClassCompletion" integer,
  "DaysBetweenRepair" integer,
  "ClassMTBR" integer,
  "Compliance" integer,
  "OrderBy" char(256),
  "TotalRows" integer ) 
begin
  call "SHC"."EquipmentStatisticsLoad"(@NodeId,@OrderBy,@IsLimited)
end