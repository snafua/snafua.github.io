create procedure "_CRT"."CertificatesRow"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "VesselName" char(80),
  "CertificateTitle" char(128),
  "FrequencyInMonths" integer,
  "CertificateLocation" char(128),
  "CertificateStatus" char(50),
  "CertificateType" char(50),
  "CertificateWindow" char(10),
  "DueAction" char(50),
  "DueDate" date,
  "LastEndorsedDate" date,
  "LastIssuedDate" date,
  "ResponsibleParty" char(128),
  "ScheduledDate" date,
  "HasAttachments" bit,
  "CertificatePermissions" integer ) 
begin
  declare @CertificateId integer;
  declare @SiteId integer;
  declare @MilestoneTypeId integer;
  declare @UserId integer;
  declare @ApplicationId integer;
  set @UserId = "SWA"."UserId"();
  set @ApplicationId = "CRT"."ApplicationId"();
  set @SiteId = "SWA"."KeyValuePairParse"(@RowId,'SiteId');
  set @CertificateId = "SWA"."KeyValuePairParse"(@RowId,'CertificateId');
  set @MilestoneTypeId = "SWA"."KeyValuePairParse"(@RowId,'MilestoneTypeId');
  call "CRT"."CertificatesRow"(@UserId,@ApplicationId,@SiteId,@CertificateId,@MilestoneTypeId)
end