create procedure "_VTL"."GetDocumentRequestFormats"()
result( 
  "DocumentFormatId" smallint,"DocumentFormat" char(100) ) 
begin
  call "VTL"."GetDocumentRequestFormats"()
end