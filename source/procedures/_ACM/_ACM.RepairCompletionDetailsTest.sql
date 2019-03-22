create procedure --JLD
"_ACM"."RepairCompletionDetails"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "RepairNarrative" long varchar,
  "WorkListItemDate" timestamp,
  "WorkListItemDateMin" timestamp,
  "WorkListItemDateMax" timestamp,
  "CompletionDate" timestamp,
  "CompletionDateMin" timestamp,
  "CompletionDateMax" timestamp,
  "TestResultValid" bit,
  "CloseOutNotes" long varchar,
  "WorkListItemDatePermissions" integer,
  "CompletionDatePermissions" integer,
  "TestResultValidPermissions" integer,
  "CloseOutNotesPermissions" integer,
  "AssociatedMaintenancePermissions" integer,
  "ActualLaborHoursPermissions" integer ) 
begin
  /*
2018-05-07 JLD E-03377 B-17750
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "ACM"."RepairCompletionDetails"(@VesselId,@WorkRequestId)
end