create procedure "_SMH"."EquipmentStatisticsLoad"( 
  in @NodeId char(256) default null,
  in @OrderBy char(256) default null ) 
result( 
  "VesselId" integer, -- Not Shown
  "EquipmentId" integer, -- Not Shown
  "VesselName" char(128), -- Vessel
  "EquipmentName" char(128), -- Equipment
  "StatisticsLastUpdated" char(10), -- Updated
  "MaintenanceLevel" char(20),
  "DaysBetweenRepair" integer, -- MTBR
  "ClassDaysBetweenRepair" integer, -- Class MTBR
  "EquipmentAge" integer, -- Age
  "EquipmentRepairCount" integer, -- Repairs
  "MaintenanceScheduleCount" integer, -- Scheduled
  "MaintenanceCompleteCount" integer, -- Complete
  "MaintenanceIncompleteCount" integer, -- Incomplete
  "MaintenanceDeferredCount" integer, -- Deferred
  "MaintenanceTotalCount" integer, -- Total
  "MaintenanceCompliance" integer, -- Compliance
  "ClassCompliance" integer, -- Class Compl
  "MaintenanceCompletion" integer, -- Completion
  "ClassCompletion" integer, -- Class Comp
  "OrderBy" char(256), -- Not Shown
  "MTBR" integer, -- Legacy
  "ClassMTBR" integer, -- Legacy
  -- Legacy
  "Compliance" integer ) 
begin
  call "SMH"."EquipmentStatisticsLoad"(@NodeId,@OrderBy)
end