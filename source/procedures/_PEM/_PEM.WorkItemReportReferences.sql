create procedure "_PEM"."WorkItemReportReferences"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer ) 
result( 
  "WorkItemId" integer,
  "WorkItemReportReferenceId" integer,
  "WorkItemReportReferenceType" char(20),
  "WorkItemReportReferenceNumber" char(10),
  "WorkItemReportReferenceTitle" char(128),
  "WorkItemModStatus" char(25),
  "ConditionReportWorkItemId" integer,
  "ConditionReportId" integer,
  "WorkItemModWorkItemId" integer,
  "WorkItemModId" integer,
  "PortEngineerNoteId" integer,
  "FlagReference" integer ) 
begin
  call "PEM"."WorkItemReportReferences"(@VesselId,@WorkItemId,@WorkItemReportId)
end