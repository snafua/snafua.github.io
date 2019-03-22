create procedure "_SRM"."ServiceRequestsUsersBranch"( in @NodeId varchar(1024) ) 
result( 
  "NodeId" varchar(1024),
  "AssignedToUserId" integer,
  "AssignedToUserFullName" char(256),
  "Emails" char(500),
  "PhoneNumber" char(20),
  "UserRole" char(20),
  "OfficeCodeId" integer,
  "OfficeCodeDisplay" char(128),
  "OfficeCodeSupervisorId" integer,
  "OfficeCodeSupervisorName" char(256),
  "CanEditBranch" bit,
  "CanEditRole" bit,
  "CanAdd" bit,
  "CanRemove" bit ) 
begin
  call "SRM"."ServiceRequestsUsersBranch"(@NodeId)
end