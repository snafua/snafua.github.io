create procedure "_SWA"."MaintenanceDeferralSave"( 
  in @RowId long varchar,
  in @DeferralReason char(20),
  in @DeferredDate char(50) default null,
  in @ItemComments long varchar default null,
  in @AvailabilityId integer default null,
  in @IgnoreItemComments bit default 0,
  in @Meter char(10) default null,
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
  "ResetPermissions" integer,
  "MaintenanceProcedureNodeId" char(1024) ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @MachineryHistoryId integer;
  declare @DeferredToAvailability integer;
  declare @MeterReading integer;
  declare @BilletId integer;
  declare @Success bit;
  declare @ErrorMessage long varchar;
  declare @UserId integer;
  declare @RowIdOut long varchar;
  declare @DeferredDateEX date;
  declare @ItemCommentsEX long varchar;
  declare @DeferralReasonEX char(20);
  declare @DeferredToAvailabilityEX integer;
  declare @IsDeferred bit;
  declare @TaskStatus char(20);
  declare @Scheduled date;
  declare @LastCompleted date;
  declare @ActualManHours numeric(10,2);
  declare @LegacyAccess integer;
  declare @LegacyPermission integer;
  declare @ApplicationId integer;
  declare @MachineryHistoryIdNew integer;
  set @UserId = "SWA"."UserId"();
  set @ApplicationId = "AWB"."ApplicationId"();
  if "ECO"."CheckNull"(@Meter) is null then
    set @Meter = null
  end if;
  if @IgnoreMeter = 1 then
    set @Meter = null
  end if;
  if "ISNUMERIC"(@Meter) = 1 then
    set @MeterReading = cast(@Meter as integer)
  else
    set @MeterReading = null
  end if;
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
  set @BilletId = "SWA"."KeyValuePairParse"(@RowId,'BilletId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
  if @MachineryHistoryId = 1 then
    set @MachineryHistoryId = "SWA"."MachineryHistoryId"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@DeferredDate)
  end if;
  if @MachineryHistoryId is not null then
    set @IsDeferred = "SWA"."MaintenanceIsDeferred"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@MachineryHistoryId)
  else
    set @IsDeferred = 0
  end if;
  if @BilletId is null then
    set @BilletId = "SWA"."MaintenanceBilletId"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
  end if;
  if @IsDeferred = 1 then
    set @DeferredDateEX = "SWA"."MaintenanceDeferralDate"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@MachineryHistoryId);
    set @ItemCommentsEX = (select "UserNotes" from "AWB"."PlannedMaintenanceUserNotes"(@VesselId,@MachineryHistoryId,@EquipmentId,'ANSI'));
    set @DeferralReasonEX = "SWA"."MaintenanceDeferralReason"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@MachineryHistoryId);
    set @DeferredToAvailabilityEX = "SWA"."MaintenanceDeferredToAvailability"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@MachineryHistoryId);
    if @AvailabilityId is null then
      set @DeferredToAvailability = @DeferredToAvailabilityEX
    end if;
    if @IgnoreItemComments = 1 then
      set @ItemComments = @ItemCommentsEX
    end if;
    if @DeferralReason = 'Multiple' then
      set @DeferralReason = @DeferralReasonEX
    end if;
    if @DeferredDate = 'Multiple' then
      set @DeferredDate = @DeferredDateEX
    end if;
    call "SAMM"."MachineryHistoryMaintenanceDeferralUpdate"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@MachineryHistoryId,@DeferralReason,@DeferredToAvailability);
    call "SAMM"."MachineryHistoryMaintenanceDeferralScheduleUpdate"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@MachineryHistoryId,@DeferredDate,@MeterReading);
    call "SWA"."MaintenanceScheduleInsertUpdate"(@VesselId,@EquipmentId,@MaintenanceProcedureId,null,null,@DeferredDate,@MeterReading,@DeferredToAvailability);
    if @ItemComments is not null then
      call "SWA"."MachineryHistoryDetailInsertUpdateDelete"(@VesselId,@MachineryHistoryId,@ItemComments,0)
    end if;
    set @RowIdOut = "STRING"(@RowIdOut,'RowType=Maintenance,VesselId=',@VesselId,',BilletId=',@BilletId,',EquipmentId=',@EquipmentId,',MaintenanceProcedureId=',@MaintenanceProcedureId,',MachineryHistoryId=',@MachineryHistoryId);
    set @Success = 1
  else
    if @AvailabilityId is null and "ISDATE"(@DeferredDate) = 0 then
      set @Success = 0;
      set @ErrorMessage = 'A Date or an Availability must be selected'
    elseif @DeferralReason = 'Multiple' or @DeferralReason is null then
      set @Success = 0;
      set @ErrorMessage = 'Deferral Reason must be selected.'
    else
      call "SAMM"."P_MaintenanceDeferEX"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@UserId,@DeferredDate,@DeferralReason,@ItemComments,@MeterReading,@AvailabilityId);
      if @MachineryHistoryId is null then
        set @MachineryHistoryId = "SWA"."DeferralMachineryHistoryId"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
      end if;
      call "SMH"."HistoryItemsUpdateMaintenanceVessel"(@VesselId,@EquipmentId,@MachineryHistoryId);
      if @ItemComments is not null then
        call "SWA"."MachineryHistoryDetailInsertUpdateDelete"(@VesselId,@MachineryHistoryId,@ItemComments,0)
      end if;
      set @RowIdOut = "STRING"(@RowIdOut,'RowType=Maintenance,VesselId=',@VesselId,',BilletId=',@BilletId,',EquipmentId=',@EquipmentId,',MaintenanceProcedureId=',@MaintenanceProcedureId,',MachineryHistoryId=',@MachineryHistoryId);
      set @Success = 1
    end if end if;
  select first
    "STRING"(
    'RowType=Maintenance,VesselId=',"VesselId",',EquipmentId=',"EquipmentId",',MaintenanceProcedureId=',"MaintenanceProcedureId","IFNULL"("MachineryHistoryId",null,',MachineryHistoryId='),"MachineryHistoryId",',BilletId=',"BilletId",',OperationalStatusId=',"OperationalStatusId") as "RowId",
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
    endif as "DeferPermissions",if "MaintenanceStatus" in( 'Deferred','Complete','Completed' ) then
      "ECO"."PermissionsUserBitmap"(@ApplicationId,"VesselId",'PMUncomplete',@UserId)
    else 0
    endif as "UncompletePermissions",if "MaintenanceStatus" in( 'Deferred','Complete','Completed' ) then
      "ECO"."PermissionsUserBitmap"(@ApplicationId,"VesselId",'PMUncomplete',@UserId)
    else 0
    endif as "ResetPermissions","STRING"('VesselId=',"VesselId",',EquipmentId=',"EquipmentId",',MaintenanceProcedureId=',"MaintenanceProcedureId") as "MaintenanceProcedureNodeId"
    from "SWA"."ViewPlannedMaintenanceAllStat"
    where "VesselId" = @VesselId
    and "EquipmentId" = @EquipmentId
    and "MaintenanceProcedureId" = @MaintenanceProcedureId
    order by "LastCompleted" desc
end