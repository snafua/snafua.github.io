create procedure --RJM
"_SWA"."TestResultsAttachments"( 
  in @RowId char(1024) ) 
result( 
  "AttachmentRowId" char(1024),
  "AttachmentBytes" integer,
  "AttachmentTitle" char(200),
  "AttachmentDescription" char(200),
  "AttachmentPermissions" integer ) 
begin
  /*
2018-06-19 RJM E-04294 B-18300
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @TestResultId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @TestResultId = "SWA"."KeyValuePairParse"(@RowId,'TestResultId');
  call "SWA"."TestResultsAttachments"(@VesselId,@EquipmentId,@TestResultId)
end