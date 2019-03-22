create procedure "_VTL"."DocumentsTypesInsert"( in @DocumentType char(50) ) 
result( 
  "DocumentTypeId" smallint,
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."DocumentsTypesInsert"(@DocumentType)
end