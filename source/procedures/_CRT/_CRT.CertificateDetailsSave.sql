create procedure --RJM
"_CRT"."CertificateDetailsSave"( 
  in @RowId char(1024) default null,
  in @CertificateTitle char(128),
  in @CertificateType char(50),
  in @CertificateRegulatoryBody char(128),
  in @CertificateReference char(128),
  in @CertificateLocation char(128) default null,
  in @CertificateResponsibleParty char(128) default null,
  in @IssueFrequencyInMonths integer default null,
  in @EndorsementFrequencyMonths integer default null,
  in @ExpirationDaysBefore integer default null,
  in @ExpirationDaysAfter integer default null,
  in @AdministrativeNotes long varchar default null,
  in @AttachmentEndorsementRequired bit default 0,
  in @AttachmentIssuanceRequired bit default 0 ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2017-12-01 RJM
2018-02-16 RJM Added AttachmentEndorsementRequired, AttachmentIssuanceRequired
*/
  declare @CertificateId integer;
  if "ECO"."CheckNull"(@RowId) is not null and "ISNUMERIC"(@RowId) = 0 then
    set @CertificateId = "SWA"."KeyValuePairParse"(@RowId,'CertificateId')
  end if;
  if "ECO"."CheckNull"(@RowId) is not null and "ISNUMERIC"(@RowId) = 1 then
    set @CertificateId = @RowId
  end if;
  call "CRT"."CertificateDetailsSave"(@CertificateId,@CertificateTitle,@CertificateType,@CertificateRegulatoryBody,
  @CertificateReference,@CertificateLocation,@CertificateResponsibleParty,@IssueFrequencyInMonths,
  @EndorsementFrequencyMonths,@ExpirationDaysBefore,@ExpirationDaysAfter,@AdministrativeNotes,
  @AttachmentEndorsementRequired,@AttachmentIssuanceRequired)
end