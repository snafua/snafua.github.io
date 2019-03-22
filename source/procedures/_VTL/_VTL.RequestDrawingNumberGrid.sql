create procedure "_VTL"."RequestDrawingNumberGrid"( 
  in @RequestDrawingNumberStatusId integer default null,
  in @RequestDrawingNumberId integer default null,
  in @RequestingUserId integer default null ) 
result( 
  "RequestDrawingNumberStatusId" integer,
  "RequestDrawingNumberStatus" varchar(50),
  "NumberRequested" integer,
  "RequestedById" integer,
  "RequestedByFullName" varchar(256),
  "RequestedOn" date,
  "RequestedByPhone" varchar(15),
  "RequestedByEmail" varchar(256),
  "RequestDrawingNumberId" integer,
  "LibrarianComments" long varchar ) 
begin
  call "VTL"."RequestDrawingNumberGrid"(@RequestDrawingNumberStatusId,@RequestDrawingNumberId,@RequestingUserId)
end