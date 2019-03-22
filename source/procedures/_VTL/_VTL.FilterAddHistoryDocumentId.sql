create procedure "_VTL"."FilterAddHistoryDocumentId"( in @DocumentsId char(80) ) 
result( 
  "FilterId" integer,
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."FilterAddHistoryDocumentId"(@DocumentsId)
end