create procedure "_VTL"."RequestDrawingNumberInsertUpdate"( 
  in @RequestDrawingNumberId integer default null,
  in @RequestedById integer default null,
  in @RequestedByFullName varchar(256) default null,
  in @RequestedByEmail varchar(256) default null,
  in @RequestedByPhone varchar(15) default null,
  in @RequestDrawingNumberStatusId integer default null,
  in @RequestDomain char(100) default null,
  in @LibrarianComments long varchar default null ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar,
  "RequestDrawingNumberId" integer ) 
begin
  call "VTL"."RequestDrawingNumberInsertUpdate"(@RequestDrawingNumberId,
  @RequestedById,
  @RequestedByFullName,
  @RequestedByEmail,
  @RequestedByPhone,
  @RequestDrawingNumberStatusId,
  @RequestDomain,
  @LibrarianComments)
end