create procedure "_VTL"."DocumentSubmitGrid"( in @DocumentSubmitStatus char(10) default null,in @DocumentSubmitId integer default null,
  in @RequestingUserId integer default null ) 
result( 
  "DocumentSubmitId" integer,
  "DocumentTypeId" smallint,
  "DocumentType" char(50),
  "DocumentSubmitStatus" char(10),
  "AttachmentId" integer,
  "DocumentNumber" varchar(50),
  "Vessels" varchar(1024),
  "SubmitDate" timestamp,
  "SubmitByUserFullName" varchar(256),
  "SubmitByUserPhoneNumber" varchar(256),
  "SubmitByUserEmail" varchar(256),
  "Comments" long varchar ) 
begin
  call "VTL"."DocumentSubmitGrid"(@DocumentSubmitStatus,@DocumentSubmitId,@RequestingUserId)
end