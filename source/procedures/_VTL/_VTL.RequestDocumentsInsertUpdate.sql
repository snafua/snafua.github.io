create procedure --JLD
"_VTL"."RequestDocumentsInsertUpdate"( 
  in @RequestDocumentsId integer default null,
  in @RequestUserEmail varchar(255) default null,
  in @RequestUserPhone varchar(255) default null,
  in @RequestTitle char(255),
  in @DocumentFormatId smallint,
  in @DeliverOptionId smallint,
  in @Vessels char(100) default null,
  in @Comments long varchar default null,
  in @AsignedToUserId integer default null,
  in @RequestDocumentsStatus char(25) default null,
  in @SavedList long varchar default null,
  in @DocumentTypeId tinyint,
  in @DocumentNumber varchar(255),
  in @RequestDomaIN char(100) default null ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar,
  "RequestDocumentsId" integer ) 
/*
2019-02-14 JLD E-04892 B-21154 Reformatted
*/
begin
  call "VTL"."RequestDocumentsInsertUpdate"(@RequestDocumentsId,@RequestUserEmail,@RequestUserPhone,@RequestTitle,@DocumentFormatId,@DeliverOptionId,@Vessels,@Comments,@AsignedToUserId,@RequestDocumentsStatus,@SavedList,@DocumentTypeId,@DocumentNumber,@RequestDomain)
end