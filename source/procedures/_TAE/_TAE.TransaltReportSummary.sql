create procedure "_TAE"."TransaltReportSummary"( 
  in @RowId char(1024) ) 
result( 
  "VesselName" char(80),
  "HullNumber" char(10),
  "TransaltNumber" char(25),
  "ContractNumber" char(25),
  "WorkItemNumber" char(25),
  "AvailabilityType" char(15),
  "ContractStartDate" date,
  "CompletionTimestamp" timestamp,
  "FacilityName" char(128),
  "InstallingActivity" long varchar,
  "TotalCost" numeric(15,2),
  "Comments" long varchar,
  "InstalledEquipment" long varchar,
  "NameplateInfo" long varchar,
  "ManualChanges" char(15),
  "DrawingChanges" char(15),
  "AllTSD" char(15),
  "ILSRepOnsite" bit,
  "ILSRepName" long varchar,
  "MASPComplete" bit,
  "TSDDistributed" char(15) ) 
begin
  call "TAE"."TransaltReportSummary"(@RowId)
end