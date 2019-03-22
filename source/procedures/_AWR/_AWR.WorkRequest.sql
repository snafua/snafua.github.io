create procedure --RJM
"_AWR"."WorkRequest"( 
  in @ApplicationId integer,
  in @RowId char(1024) default null,
  in @NodeId char(1024) default null ) 
result( 
  "VesselId" integer,
  "VesselName" char(80),
  "WorkRequestTitle" char(50),
  "DepartmentId" integer,
  "DepartmentTitle" char(50),
  "CompartmentId" integer,
  "Compartment" char(50),
  "LocationDeck" char(10),
  "LocationFrame" char(10),
  "LocationSide" char(10),
  "Originator" char(128),
  "Initiation" char(80),
  "InitiationId" smallint,
  "WorkRequestNotes" long varchar,
  "WorkRequestExternalId" char(10),
  "VesselPermissions" integer,
  "TitlePermissions" integer,
  "DepartmentPermissions" integer,
  "CompartmentPermissions" integer,
  "LocationPermissions" integer,
  "OriginatorPermissions" integer,
  "NotesPermissions" integer,
  "AttachmentPermissions" integer,
  "EquipmentPermissions" integer,
  "InitiationPermissions" integer,
  "ApproveDenyPermission" integer,
  "WorkRequestReportType" char(128),
  "WorkRequestReportId" char(1024),
  "WorkRequestNotesPermissions" integer,
  "Narrative" long varchar,
  "NarrativePermissions" integer,
  "SourceId" integer,
  "Source" char(80),
  "SubTypeId" integer,
  "SubType" char(80),
  "WorkRequestReferenceId" integer,
  "WorkRequestReference" long varchar,
  "ReferencePermissions" integer,
  "SourcePermissions" integer,
  "SubTypePermissions" integer,
  "CompletePermissions" integer ) 
begin
  /*
2016-12-16 RJM Added ApproveDenyPermission for B-12835
2017-02-28 RJM Added ReportId and ReportType to results
2017-03-09 RJM added Narrative to results
2017-03-10 RJM Added NarrativePermissions
2017-06-14 RJM Added Sources, Subtypes
2018-01-12 RJM Added CompletePermissions
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"("ISNULL"(@RowId,@NodeId),'VesselId'); --get from NodeId if RowId is null
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  if @VesselId is null then --get default
    set @VesselId = "ECO"."UserDefaultVesselId"(@ApplicationId)
  end if;
  call "AWR"."WorkRequest"(@ApplicationId,@VesselId,@WorkRequestId)
end