create procedure --RJM
"_CRT"."CertificateDetails"( 
  in @RowId char(1024) default null,
  in @NodeId char(1024) default null ) 
result( 
  "CertificateTitle" char(128),
  "CertificateType" char(50),
  "CertificateRegulatoryBody" char(128),
  "CertificateReference" char(128),
  "CertificateLocation" char(128),
  "CertificateResponsibleParty" char(128),
  "MilestoneIssuedFrequency" integer,
  "MilestoneEndorsedFrequency" integer,
  "MilestoneEndorsedExpirationDaysBefore" integer,
  "MilestoneEndorsedExpirationDaysAfter" integer,
  "CertificateAdministrativeNotes" long varchar,
  "FlagCertificate" integer,
  "FlagTitle" integer,
  "FlagCertificateType" integer,
  "FlagRegulatoryBody" integer,
  "FlagReference" integer,
  "FlagLocation" integer,
  "FlagResponsibleParty" integer,
  "FlagMilestoneIssued" integer,
  "FlagMilestoneEndorsed" integer,
  "FlagAdministrativeNotes" integer,
  "FlagSites" integer,
  "FlagExpirationDaysBefore" integer,
  "FlagExpirationDaysAfter" integer,
  "LastIssuedDate" date,
  "LastEndorsedDate" date,
  "ScheduledDate" date,
  "FlagEndorsement" integer,
  "FlagIssuance" integer,
  "AttachmentEndorsementRequired" bit,
  "AttachmentIssuanceRequired" bit ) 
begin
  /*
20171128 RJM CHanged input from CertificateId to RowId, added NodeId, added flags FlagExpirationDaysBefore, FlagExpirationDaysAfter
2018-02-15 Added SiteId, LastIssuedDate, LastEndorsedDate,ScheduledDate to support QuickEdit
*/
  declare @CertificateId integer;
  declare @SiteId integer;
  if "ECO"."CHeckNull"(@RowId) is null then
    set @CertificateId = "SWA"."KeyValuePairParse"(@NodeId,'CertificateId');
    set @SiteId = "SWA"."KeyValuePairParse"(@NodeId,'SiteId')
  else
    set @CertificateId = "SWA"."KeyValuePairParse"(@RowId,'CertificateId');
    set @SiteId = "SWA"."KeyValuePairParse"(@RowId,'SiteId')
  end if;
  call "CRT"."CertificateDetails"(@CertificateId,@SiteId)
end