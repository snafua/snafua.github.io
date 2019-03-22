create procedure "_VTL"."DocumentsTypes"()
result( 
  "DocumentTypeId" tinyint,
  "DocumentType" char(50) ) 
begin
  call "VTL"."DocumentsTypes"()
end