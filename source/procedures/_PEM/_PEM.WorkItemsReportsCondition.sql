create procedure -- JHM
"_PEM"."WorkItemsReportsCondition"( 
  in @VesselId integer,
  in @ContractId integer,
  in @PENGVersion char(12) default '2.0' ) 
result( 
  "WorkItemId" integer,
  "WorkItemReportId" integer,
  "WorkItemNumber" char(25),
  "WorkItemReportType" char(20),
  "WorkItemReportNumber" char(25),
  "WorkItemReportTitle" char(128),
  "WorkItemTitle" char(128),
  "WorkItemReportDateIssued" date,
  "WorkItemReportDateReturned" date,
  "ConditionActionId" integer,
  "ConditionActionDescription" char(50),
  "PortEngineerId" integer,
  "PortEngineerFullName" char(128),
  "MachineryHistoryRelevant" bit,
  "HasReportText" bit,
  "HasReportResponse" bit,
  "FlagReport" integer,
  "HasAttachments" bit ) 
begin
  /*
2018-07-18 - JHM - E-04142: Added support for changing RFP to CCO
*/
  call "PEM"."WorkItemsReportsCondition"(@VesselId,@ContractId,@PENGVersion)
end