create procedure --E-03857
--RJM
"_CRT"."SiteCertificateQuickEdit"( 
  in @RowId char(1204) ) 
result( 
  "RowId" char(1024),
  "SiteId" integer,
  "CertificateId" integer,
  "VesselName" char(80),
  "CertificateType" char(50),
  "CertificateRegulatoryBody" char(128),
  "CertificateLocation" char(128),
  "CertificateResponsibleParty" char(128),
  "CertificateReference" char(128),
  "FrequencyIssuedMonths" integer,
  "FrequencyEndorsedMonths" integer,
  "LastIssuedDate" date,
  "LastEndorsedDate" date,
  "WindowBefore" integer,
  "WindowAfter" integer,
  "Scheduled" date,
  "AttachmentEndorsementRequired" bit,
  "AttachmentIssuanceRequired" bit,
  "LastIssuedDateMin" date,
  "LastIssuedDateMax" date,
  "LastEndorsedDateMin" date,
  "LastEndorsedDateMax" date,
  "ScheduledDateMin" date,
  "ScheduledDateMax" date,
  "TitlePermission" integer,
  "CertificateTypePermission" integer,
  "CertificateRegulatoryBodyPermission" integer,
  "CertificateLocationPermission" integer,
  "CertificateResponsiblePartyPermission" integer,
  "CertificateReferencePermission" integer,
  "FrequencyIssuedMonthsPermission" integer,
  "FrequencyEndorsedMonthsPermission" integer,
  "LastIssuedDatePermissions" integer,
  "LastEndorsedDatePermissions" integer,
  "LastScheduledDatePermissions" integer,
  "AttachmentEndorsementRequiredPermissions" integer,
  "AttachmentIssuanceRequiredPermissions" integer,
  "ActivityCommentPermissions" integer,
  "AttachmentPermissions" integer ) 
begin
  /*
2018-02-20 RJM
2018-04-19 RJM Changed MilestoneTypeId to CertificateMilestoneType. Added permissions, Min Max dates
*/
  declare @SiteId integer;
  declare @CertificateId integer;
  declare @CertificateMilestoneType char(50);
  set @SiteId = "SWA"."KeyValuePairParse"(@RowId,'SiteId');
  set @CertificateId = "SWA"."KeyValuePairParse"(@RowId,'CertificateId');
  set @CertificateMilestoneType = "SWA"."KeyValuePairParse"(@RowId,'CertificateMilestoneType');
  call "CRT"."SiteCertificateQuickEdit"(@SiteId,@CertificateId,@CertificateMilestoneType)
end