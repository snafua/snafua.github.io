create procedure "_SWA"."PlannedMaintenanceComplete"( 
  in @RowId long varchar,
  in @CompleteDate char(50),
  in @ActualHours numeric(6,2) default null,
  in @ItemComments long varchar,
  in @RunHours char(10) default null,
  in @Meter char(10) default null,
  in @IgnoreItemComments bit default 0,
  in @IgnoreMeter bit default 0 ) 
result( 
  "RowId" long varchar,
  "TaskStatus" char(20),
  "Scheduled" date,
  "LastCompleted" date,
  "ActualManHours" numeric(10,2),
  "DeferralCount" integer,
  "CompletePermissions" integer,
  "DeferPermissions" integer,
  "UncompletePermissions" integer,
  "MaintenanceProcedureNodeId" char(1024) ) 
begin
  declare @ErrorMessage long varchar;
  declare @UserId integer;
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @MachineryHistoryId integer;
  declare @MachineryHistoryType char(15);
  declare @MaintenanceProcedureTitle char(50);
  declare @MaintStatus char(20);
  declare @MeteredMaintenanceInterval integer;
  declare @CompleteDateEX date;
  declare @ItemCommentsEX long varchar;
  declare @RowIdOut long varchar;
  declare @BilletId integer;
  declare @NewDueDate date;
  declare @OldDueDate date;
  declare @IsAlreadyCompleted bit;
  declare @F_MaintenanceComplete char(60);
  declare @IntervalDays integer;
  declare @EquipmentOperationalStatusId integer;
  declare @ManHourItemNo integer;
  declare @HasBilletHours bit;
  declare @ActualHoursEx numeric(6,2);
  declare @LegacyAccess integer;
  declare @LegacyPermission integer;
  declare @ApplicationId integer;
  declare @OperationalStatusId integer;
  if "ISDATE"(@CompleteDate) = 1 then
    if @CompleteDate > current utc timestamp then
      set @CompleteDate = current utc timestamp
    end if end if;
  set @RunHours = "ISNULL"(@Meter,@RunHours);
  set @ApplicationId = "AWB"."ApplicationId"();
  set @UserId = "SWA"."UserId"();
  set @MachineryHistoryType = 'Maintenance';
  if @ActualHours = 0 then
    set @ActualHours = null
  end if;
  if @IgnoreItemComments is null then
    set @IgnoreItemComments = 0
  end if;
  if @IgnoreMeter is null then
    set @IgnoreMeter = 0
  end if;
  set @ActualHours = "ECO"."CheckNull"(@ActualHours);
  set @LegacyAccess = "SWA"."SAMMUserAccessLevel"(@UserId,@ApplicationId);
  if(@LegacyPermission is null) or(@LegacyPermission = 1) then
    set @LegacyAccess = 4;
    if @VesselId = 10 then
      set @LegacyAccess = 0
    end if
  else if "ISNULL"(@LegacyAccess,0) < 3 then
      set @LegacyAccess = 0
    else
      set @LegacyAccess = 15
    end if end if;
  if @LegacyAccess > 1 then
    set @LegacyAccess = 15
  end if;
  set @LegacyPermission = "SWA"."SAMMUserApplicationPermissions"(@UserId,@ApplicationId,'Reassign Maint');
  if(@LegacyPermission is null) or(@LegacyPermission = 1) then
    if @VesselId = 10 then
      set @LegacyPermission = 0
    else
      set @LegacyPermission = 15
    end if end if;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
  set @OperationalStatusId = "SWA"."KeyValuePairParse"(@RowId,'OperationalStatusId');
  set @IsAlreadyCompleted = "SWA"."MaintenanceIsCompleted"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@MachineryHistoryId);
  set @MaintStatus = "SAMM"."F_MaintenanceStatus"(@VesselId,@EquipmentId,@MaintenanceProcedureId);
  if @MaintStatus <> 'Completed' then
    set @IsAlreadyCompleted = 0
  end if;
  set @MaintenanceProcedureTitle = "SWA"."MaintenanceProcedureTitle"(@MaintenanceProcedureId);
  set @CompleteDateEX = "SWA"."PlannedMaintenanceCompletionDate"(@VesselId,@EquipmentId,@MaintenanceProcedureId);
  set @ItemCommentsEX = (select "UserNotes" from "AWB"."PlannedMaintenanceUserNotes"(@VesselId,@MachineryHistoryId,@EquipmentId,'ANSI'));
  if @HasBilletHours = 0 then
    set @HasBilletHours = "SWA"."MaintenanceHasBilletHours"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@MachineryHistoryId)
  end if;
  if @IgnoreMeter = 0 then
    set @MeteredMaintenanceInterval = "SAMM"."F_MaintenanceGetHourMeterReadingForCompletion"(@VesselId,@EquipmentId);
    if "ISNUMERIC"(@RunHours) = 0 then
      set @RunHours = @MeteredMaintenanceInterval
    end if
  else set @MeteredMaintenanceInterval = null;
    set @RunHours = null
  end if;
  if @IgnoreItemComments = 1 then
    set @ItemComments = @ItemCommentsEX
  end if;
  if @IsAlreadyCompleted = 0 then
    if "ISDATE"(@CompleteDate) = 0 then
      set @CompleteDate = @CompleteDateEX
    end if;
    set @F_MaintenanceComplete = "SAMM"."F_MaintenanceComplete"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@CompleteDate,@UserId,@ItemComments,@ActualHours,@RunHours);
    set @MachineryHistoryId = "SWA"."MachineryHistoryId"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@CompleteDate,0);
    if @ActualHours is null then
      set @ManHourItemNo = "SWA"."MaintenanceManHourItemNo"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@MachineryHistoryId);
      if @ManHourItemNo is not null then
        call "SAMM"."P_SP2DeleteManHours"(@VesselId,@ManHourItemNo)
      end if end if;
    call "SMH"."HistoryItemsUpdateMaintenanceVessel"(@VesselId,@EquipmentId,@MachineryHistoryId)
  else
    if @IgnoreItemComments = 0 and @ItemComments is not null then
      call "SWA"."MachineryHistoryDetailInsertUpdateDelete"(@VesselId,@MachineryHistoryId,@ItemComments,0)
    end if;
    if @IgnoreItemComments = 0 and @ItemComments is null then
      call "SWA"."MachineryHistoryDetailInsertUpdateDelete"(@VesselId,@MachineryHistoryId,@ItemComments,1)
    end if;
    call "SWA"."MachineryHistoryMaintenanceInsertUpdate"(@VesselId,@MachineryHistoryId,@EquipmentId,@MaintenanceProcedureId,'Complete',@CompleteDate,@RunHours);
    call "SWA"."MaintenanceCompletionInsertUpdate"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@CompleteDate,@RunHours);
    set @ActualHoursEx = "SWA"."PlannedMaintenanceActualHours"(@VesselId,null,null,@MachineryHistoryId);
    if @ActualHours is not null and "ISNUMERIC"(@ActualHours) = 1 then
      if @ActualHoursEx is not null then
        call "SAMM"."P_SP2MachineryHistoryUpdateHours"(@VesselId,@MachineryHistoryId,@EquipmentId,@ActualHours)
      else
        call "SAMM"."P_SP2MaintenanceSaveHoursPermanent"(@VesselId,@MachineryHistoryId,@EquipmentId,@MaintenanceProcedureId,@ActualHours)
      end if end if;
    if "ISNULL"(@HasBilletHours,0) = 0 then
      if @ActualHours is null then
        set @ManHourItemNo = "SWA"."MaintenanceManHourItemNo"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@MachineryHistoryId);
        if @ManHourItemNo is not null then
          call "SAMM"."P_SP2DeleteManHours"(@VesselId,@ManHourItemNo)
        end if
      end if end if end if;
  set @BilletId = "SWA"."MaintenanceBilletId"(@VesselId,@EquipmentId,@MaintenanceProcedureId);
  set @RowIdOut = "STRING"(@RowIdOut,'RowType=Maintenance,VesselId=',@VesselId,',EquipmentId=',@EquipmentId,',MaintenanceProcedureId=',@MaintenanceProcedureId,',MachineryHistoryId=',@MachineryHistoryId,',BilletId=',@BilletId,',OperationalStatusId=',@OperationalStatusId);
  select first
    @RowIdOut as "RowId",
    "REPLACE"("MaintenanceStatus",'Completed','Complete') as "TaskStatus",
    "MaintenanceScheduleDate" as "Scheduled",
    "MaintenanceCompletionDate" as "LastCompleted",
    "SWA"."PlannedMaintenanceActualHours"("VesselId",
    "EquipmentId","MaintenanceProcedureId","MachineryHistoryId") as "ActualManHours",
    "SWA"."MaintenanceDeferralCount"("VesselId","EquipmentId","MaintenanceProcedureId","TaskStatus","LastCompleted") as "DeferralCount",
    if "MaintenanceStatus" in( 'Complete','Completed','Scheduled','Deferred' ) then
      "ECO"."PermissionsUserBitmap"(@ApplicationId,"VesselId",'PMCompletion',@UserId)
    else 0
    endif as "CompletePermissions",if "MaintenanceStatus" in( 'Scheduled','Deferred' ) then
      "ECO"."PermissionsUserBitmap"(@ApplicationId,"VesselId",'PMDefer',@UserId)
    else 0
    endif as "DeferPermissions",if "MaintenanceStatus" in( 'Complete','Completed' ) then
      "ECO"."PermissionsUserBitmap"(@ApplicationId,"VesselId",'PMUncomplete',@UserId)
    else 0
    endif as "UncompletePermissions","STRING"('VesselId=',"VesselId",',EquipmentId=',"EquipmentId",',MaintenanceProcedureId=',"MaintenanceProcedureId") as "MaintenanceProcedureNodeId"
    from "SWA"."ViewPlannedMaintenance"
    where "VesselId" = @VesselId
    and "EquipmentId" = @EquipmentId
    and "MaintenanceProcedureId" = @MaintenanceProcedureId
    and "MachineryHistoryId" = @MachineryHistoryId
    order by "LastCompleted" desc
end