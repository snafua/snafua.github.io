create procedure "_PEM"."WorkItemsReportsConditionPermissions"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "FlagReport" integer,
  "FlagModification" integer,
  "WorkItemsReportsReceived" integer,
  "WorkItemsReportsResponded" integer,
  "WorkItemsReportsOutstanding" integer,
  "WorkItemsReportsIssueModification" integer ) 
begin
  call "PEM"."WorkItemsReportsConditionPermissions"(@VesselId,@ContractId)
end