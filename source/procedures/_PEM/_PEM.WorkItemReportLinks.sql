create procedure "_PEM"."WorkItemReportLinks"( 
  in @VesselId integer,
  in @ContractId integer,
  in @WorkItemId integer,
  in @ReportId integer ) 
result( 
  "LinkId" integer,
  "LinkType" char(128),
  "LinkNumber" integer,
  "LinkTitle" char(128),
  "LinkStatus" char(128) ) 
begin
  call "PEM"."WorkItemReportLinks"(@VesselId,@ContractId,@WorkItemId,@ReportId)
end