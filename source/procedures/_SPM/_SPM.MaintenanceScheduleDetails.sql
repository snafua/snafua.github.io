create procedure "_SPM"."MaintenanceScheduleDetails"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @MinDate date default null,
  in @MaxDate date default null ) 
result( 
  "EquipmentId" integer,
  "ProcedureId" integer,
  "ScheduleYear" integer,
  "ScheduleMonth" integer,
  "ScheduleDay" integer,
  "ScheduleDate" bigint,
  "ItemStatus" char(1),
  "ItemPriority" char(25),
  "ItemType" char(25),
  "ItemId" char(50),
  "CanSchedule" bit ) 
begin
  call "SPM"."MaintenanceScheduleDetails"(@VesselId,@EquipmentId,@MinDate,@MaxDate)
end