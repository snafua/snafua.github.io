create procedure --E-03420
--RJM
"_ACM"."CorrectiveMaintenanceRow"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "VesselName" char(128),
  "RequestId" char(10),
  "Title" char(50),
  "OpenDate" date,
  "WorkListItemPriority" char(10),
  "RiskAssessment" integer,
  "ShipStatus" char(10),
  "ShoreStatus" char(10),
  "Originator" char(128),
  "Billet" char(30),
  "StartDate" date,
  "CompletionDate" date,
  "ClosedDate" date,
  "Source" char(80),
  "SubType" char(80),
  "Availability" char(128),
  "HasAttachments" bit,
  "WorkListItemPermission" tinyint ) 
begin
  /*
2018-05-16 RJM Added columns for E-03420 new filters
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "ACM"."CorrectiveMaintenanceRow"(@VesselId,@WorkRequestId)
end