create procedure --E-03857
--RJM
"_CRT"."SiteCertificateQuickEditSave"( 
  in @RowId char(1024),
  in @LastIssuedDate date,
  in @LastEndorsedDate date,
  in @Scheduled date,
  in @ActivityComment char(256) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar,
  "ActivityId" integer ) 
begin
  /*
2018-02-16 RJM
*/
  declare @SiteId integer;
  declare @CertificateId integer;
  declare @CertificateMilestoneType char(50);
  set @SiteId = "SWA"."KeyValuePairParse"(@RowId,'SiteId');
  set @CertificateId = "SWA"."KeyValuePairParse"(@RowId,'CertificateId');
  set @CertificateMilestoneType = "SWA"."KeyValuePairParse"(@RowId,'CertificateMilestoneType');
  call "CRT"."SiteCertificateQuickEditSave"(@SiteId,@CertificateId,@CertificateMilestoneType,@LastIssuedDate,
  @LastEndorsedDate,@Scheduled,@ActivityComment)
end