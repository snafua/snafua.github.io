create procedure --E-03857
--RJM
"_CRT"."Certificates"( 
  in @NodeId char(1024) default null,
  in @OrderBy char(1024) default null,
  in @IsLimited bit default null ) 
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
  "CertificatePermissions" integer,
  "VesselRows" integer,
  "TotalRows" integer,
  "OrderBy" long varchar,
  "FlagEndorsement" bit,
  "FlagIssuance" bit,
  "AttachmentEndorsementRequired" bit,
  "AttachmentIssuanceRequired" bit ) 
begin
  /*
RJM 2017-06-29
2018-02-16 RJM Added AttachmentEndorsementRequired, AttachmentIssuanceRequired,
FlagEndorsement, FlagIssuance 
*/
  declare @CertificateId integer;
  declare @CertificateType char(50);
  declare @SiteId integer;
  declare @UserId integer;
  declare @ApplicationId integer;
  declare @NodeSettingId integer;
  declare @NodeTypeSettingId integer;
  declare @NavTypeSettingId integer;
  declare @NodeType char(50);
  declare @NavType char(50);
  set @UserId = "SWA"."UserId"();
  set @ApplicationId = "CRT"."ApplicationId"();
  set @NodeId = "ECO"."CheckNull"(@NodeId);
  set @NodeSettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'NavigationNode');
  set @NodeTypeSettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'NavigationHierarchy');
  set @NavTypeSettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'NavigationType');
  if "ECO"."CheckNull"(@OrderBy) is null then
    set @OrderBy = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'MainGridOrderBy')
  end if;
  if "ECO"."CheckNull"(@OrderBy) is null then
    set @OrderBy = ' VesselName ASC, CertificateTitle ASC '
  end if;
  /*
IF  ECO.CheckNull(@NodeId) IS NULL THEN
SET @NodeId   = ECO.ApplicationsSettingsUsersValue( @UserId, @ApplicationId, NULL, 'NavigationNode' );
ELSE
CALL ECO.ApplicationsSettingsUsersInsertUpdate(@UserId, @ApplicationId, @NodeSettingId, @NodeId);
END IF;
*/
  set @NodeType = "SWA"."KeyValuePairParse"(@NodeId,'NodeType');
  if @NodeType is null then
    set @NavType = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'NavigationHierarchy')
  else
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@NodeTypeSettingId,@NodeType)
  end if;
  set @SiteId = "SWA"."KeyValuePairParse"(@NodeId,'SiteId');
  --MESSAGE STRING('@NodeId = ',@NodeId) TYPE INFO TO CLIENT;
  set @CertificateId = "SWA"."KeyValuePairParse"(@NodeId,'CertificateId');
  set @CertificateType = "SWA"."KeyValuePairParse"(@NodeId,'CertificateType=');
  --MESSAGE STRING('@CertificateType = ',@CertificateType) TYPE INFO TO CLIENT;
  call "CRT"."Certificates"(@UserId,@ApplicationId,@SiteId,@CertificateId,@CertificateType,@OrderBy,@IsLimited)
end