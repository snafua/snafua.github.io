create procedure "_SWA"."EquipmentReportRepair"( 
  in @VesselId integer default null,
  in @EquipmentScopeId integer default null,
  in @EquipmentNodeId char(1024) default null,
  in @StartDate date default null,
  in @EndDate date default null,
  in @ReportId integer default null,
  in @RowId char(1024) default null ) 
result( 
  "VesselName" char(80),
  "VesselClass" char(30),
  "VesselHullNumber" char(10),
  "WRExternalId" char(10),
  "WLISubject" char(50),
  "Originator" char(256),
  "Department" char(50),
  "WLIStatus" char(10),
  "OpenDate" char(10),
  "ClosedDate" char(10),
  "PriorityCode" char(1),
  "RiskAssessment" char(10),
  "Billet" char(30),
  "WRTypeDescription" char(50),
  "CasRepId" char(5),
  "Abstract" long varchar,
  "Note" long varchar,
  "QANote" long varchar,
  "SWNote" long varchar,
  "CloseOutNote" long varchar,
  "PEComment" long varchar ) 
begin
  declare @EquipmentId integer;
  set @RowId = "ECO"."CheckNull"(@RowId);
  if @RowId is not null then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId')
  else
    set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentNodeId,'EquipmentId')
  end if;
  if @EndDate is null then
    set @EndDate = current utc timestamp
  end if;
  if @StartDate is null then
    set @StartDate = "DATEADD"("year",-1,@EndDate)
  end if;
  call "SWA"."EquipmentReportRepair"(@VesselId,@EquipmentId,@StartDate,@EndDate)
end