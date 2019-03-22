create procedure "_CRT"."SitesCertificatesDiscussions"( 
  in @RowId char(1024) ) 
result( 
  "DiscussionRowId" char(1024),
  "DiscussionAuthor" char(256),
  "DiscussionTimeStamp" timestamp,
  "DiscussionText" char(2048) ) 
begin
  declare @SiteId integer;
  declare @CertificateId integer;
  set @SiteId = "SWA"."KeyValuePairParse"(@RowId,'SiteId');
  set @CertificateId = "SWA"."KeyValuePairParse"(@RowId,'CertificateId');
  call "CRT"."SitesCertificatesDiscussions"(@SiteId,@CertificateId)
end