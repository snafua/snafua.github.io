create procedure "_VTL"."DocumentGetFilePath"( in @DocumentTypeId tinyint ) 
result( 
  "DocumentStoragePath" varchar(255),
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."DocumentGetFilePath"(@DocumentTypeId)
end