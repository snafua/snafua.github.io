create procedure --AIM
"_SWA"."RepairDetails"( 
  in @NodeId char(1024) default null,
  in @RowId char(1024) default null,
  in @Source char(1024) default null,
  in @CopyRepair bit default null ) 
result( 
  "VesselName" char(80),
  "VesselHullNumber" char(50),
  "VesselId" integer,
  "Title" char(50),
  "RepairNumberPrefix" char(10),
  "RepairNumber" char(10),
  "Originator" char(256),
  "WRDate" date,
  "RepairStatus" char(10),
  "Priority" char(1),
  "SourceId" integer,
  "Source" char(80),
  "SubTypeId" integer,
  "SubType" char(80),
  "WorkRequestReferenceId" integer,
  "WorkRequestReference" long varchar,
  "CASREPID" char(5),
  "CRatingId" integer,
  "CRating" char(2),
  "RepairAbstract" long varchar,
  "RepairNotes" long varchar,
  "RepairQualityAssurance" long varchar,
  "StatementOfWork" long varchar,
  "VesselPermissions" smallint,
  "TitlePermissions" smallint,
  "RepairNumberPermissions" smallint,
  "RepairStatusPermissions" smallint,
  "PriorityPermissions" smallint,
  "SourcePermissions" smallint,
  "SubTypePermissions" smallint,
  "ReferencePermissions" smallint,
  "CASREPPermissions" smallint,
  "CRatingPermissions" smallint,
  "AbstractPermissions" smallint,
  "NotesPermissions" smallint,
  "QAPermissions" smallint,
  "StatementOfWorkPermissions" smallint,
  "StartDate" date,
  "CompleteDate" date,
  "DepartmentId" integer,
  "Department" char(50),
  "BilletId" integer,
  "BilletName" char(240),
  "BilletNodeId" char(1024),
  "EstimatedHours" numeric(6,2),
  "ActualHours" numeric(6,2),
  "StartDatePermissions" smallint,
  "CompleteDatePermissions" smallint,
  "DepartmentPermissions" smallint,
  "BilletPermissions" smallint,
  "EstimatedHoursPermissions" smallint,
  "ActualHoursPermissions" smallint,
  "ShoresideStatus" char(10),
  "Disposition" char(20),
  "FORAC" char(20),
  "ResponseDate" date,
  "ShoresideCompletionDate" date,
  "Availability" char(128),
  "AvailabilityId" integer,
  "Contract" char(128),
  "ContractId" integer,
  "WorkItemId" integer,
  "WorkItemNumber" char(25),
  "WorkItemTitle" char(128),
  "Cost" numeric(15,2),
  "PEComments" long varchar,
  "ShoresideStatusPermissions" smallint,
  "DispositionPermissions" smallint,
  "FORACPermissions" smallint,
  "ResponseDatePermissions" smallint,
  "ShoresideCompletionDatePermissions" smallint,
  "AvailabilityPermissions" smallint,
  "ContractPermissions" smallint,
  "WorkItemPermissions" smallint,
  "CostPermissions" smallint,
  "PECommentsPermissions" smallint,
  "CollaborationPermissions" smallint,
  "AttachmentPermissions" smallint,
  "DateOpened" date,
  "DateClosed" date,
  "RepairType" char(10),
  "CloseOutNotes" long varchar,
  "CloseOutNotesPermissions" smallint,
  "IsServiceOrder" bit,
  "RiskAssessment" integer,
  "RepairReportId" integer,
  "RepairReportType" char(10),
  "EquipmentId" integer,
  "HistoryItemId" integer,
  "TestResultId" integer,
  "TransaltNumber" char(25),
  "TransaltId" integer,
  "TransaltPermissions" smallint,
  "TransaltTitle" char(128),
  "EquipmentNotInSAMM" bit,
  "RAC" integer,
  "RACPermissions" smallint ) 
begin
  /*
2017-05-15 RJM
2017-12-22 RJM updated to work with rowid info from Planned Maintenance
2018-01-05 RJM updated to copy existing repair to new repair
2018-01-16 JLD B-16100 changed parameter name 'maintenance' to 'source'
2018-10-04 RJM Added TransaltId, TransaltNumber B-19456 E-03401
2018-11-13 RJM Added MachineryHistoryId
2018-12-04 AIM E-04166 B-20294 Added EquipmentPermission for Equipment not in SAMM
2019-02-11 AIM E-04954 B-20865 Added RAC and RACPermissions
2019-02-21 AIM E-05073 D-04253 Updated RepairNumber column to display WorkListItemExternalId
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  declare @EquipmentId integer;
  declare @BilletId integer;
  declare @MaintenanceProcedureId integer;
  declare @HistoryItemId integer;
  declare @TestResultId integer;
  declare @MachineryHistoryId integer;
  declare @WorkItemReferenceType char(50);
  if(@RowId is not null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
    set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
    set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
    set @BilletId = "SWA"."KeyValuePairParse"(@RowId,'BilletId');
    set @HistoryItemId = "SWA"."KeyValuePairParse"(@RowId,'HistoryItemId');
    set @TestResultId = "SWA"."KeyValuePairParse"(@RowId,'TestResultId');
    set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
    set @WorkItemReferenceType = "SWA"."KeyValuePairParse"(@RowId,'WorkItemReferenceType');
    if(@WorkRequestId is null and @WorkItemReferenceType = 'Repair') then
      set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'ReferenceTypeId')
    end if
  else
    if(@NodeId <> 'AllVessels=1') then
      set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId')
    end if
  end if;
  if("ECO"."CheckNull"(@CopyRepair) is null) then
    set @CopyRepair = 0
  end if;
  if("ECO"."CheckNull"(@Source) is not null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@Source,'VesselId');
    set @WorkRequestId = null;
    set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@Source,'MaintenanceProcedureId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@Source,'EquipmentId');
    set @BilletId = "SWA"."KeyValuePairParse"(@Source,'BilletId');
    set @CopyRepair = 0;
    set @HistoryItemId = "SWA"."KeyValuePairParse"(@Source,'HistoryItemId');
    set @TestResultId = "SWA"."KeyValuePairParse"(@Source,'TestResultId');
    set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@Source,'MachineryHistoryId')
  end if;
  call "SWA"."RepairDetails"(@VesselId,@WorkRequestId,@MaintenanceProcedureId,@EquipmentId,@BilletId,@CopyRepair,@HistoryItemId,@TestResultId,@MachineryHistoryId,@WorkItemReferenceType)
end