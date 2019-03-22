create procedure "_VTL"."RequestDocumentsGrid"( 
  in @RequestDocumentsStatus char(25) default null,
  in @AssignedToUserId integer default null,
  in @RequestDocumentsId integer default null,
  in @RequestedByUserId integer default null ) 
result( "RequestDocumentsId" integer,
  "RequestUserId" integer,
  "RequestUserEmail" varchar(255),
  "RequestUserPhone" varchar(255),
  "RequestTitle" char(255),
  "DocumentFormatId" integer,
  "DeliverOptionId" integer,
  "Vessels" char(100),
  "AssignedToUserId" integer,
  "RequestDocumentsStatus" char(25),
  "Comments" long varchar,
  "AssignedtoFullName" char(128),
  "RequestUserFullName" char(128),
  "DeliverOption" char(100),
  "DocumentFormat" char(100),
  "SavedList" long varchar,
  "RequestedOn" timestamp ) 
begin
  call "VTL"."RequestDocumentsGrid"(@RequestDocumentsStatus,@AssignedToUserId,@RequestDocumentsId,@RequestedByUserId)
end