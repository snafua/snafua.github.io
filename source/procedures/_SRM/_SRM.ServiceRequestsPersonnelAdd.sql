create procedure "_SRM"."ServiceRequestsPersonnelAdd"( in @PartOfNameorEmail long varchar default null,in @OrderBy long varchar default null ) 
result( "NodeId" char(1024),
  "UserFirstName" char(128),
  "UserMiddleName" char(128),
  "UserLastName" char(128),
  "UserFullName" char(256),
  "UserIdPhrase" char(40),
  "UserLoginId" char(127),
  "Emails" char(500),
  "PhoneNumber" char(20),
  "UserRole" char(20),
  "OfficeCodeId" integer,
  "OfficeCodeDisplay" char(128) ) 
begin
  call "SRM"."ServiceRequestsPersonnelAdd"(@PartOfNameorEmail,@OrderBy)
end