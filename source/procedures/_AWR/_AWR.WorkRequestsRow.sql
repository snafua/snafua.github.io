create procedure -- JHM - E-03425 - Update grid to include initiation source and sub type
"_AWR"."WorkRequestsRow"( 
  in @ApplicationId integer default null,
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "VesselName" char(128),
  "WorkRequestExternalId" char(10),
  "WorkRequestSubject" char(50),
  "WorkListItemExternalId" char(10),
  "DepartmentTitle" char(50),
  "VesselEquipmentDesc" char(80),
  "WorkRequestSubmitted" date,
  "WorkRequestReviewStatus" char(10),
  "WorkRequestLocation" char(128),
  "Originator" char(128),
  "OriginatorDepartmentTitle" char(50),
  "HasAttachments" bit,
  "ApproveDenyPermission" integer,
  "WorkRequestPermission" integer,
  "WorkListItemPermission" integer,
  "CompletePermissions" integer,
  "InitiationSource" char(80),
  "InitiationSourceSubType" char(80) ) 
begin
  /*
2016-07-29 RJM
2018-01-23 JLD B-16062 Added CompletePermissions to resultset
2018-03-28 JHM Updated to include InitiationSource and InitiationSourceSubType
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  if @ApplicationId is null then
    set @ApplicationId = "AWR"."ApplicationId"()
  end if;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "AWR"."WorkRequestsRow"(@ApplicationId,@VesselId,@WorkRequestId)
end