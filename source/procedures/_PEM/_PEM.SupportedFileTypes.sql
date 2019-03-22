create procedure "_PEM"."SupportedFileTypes"()
result( 
  "Type" char(25),
  "Extension" char(25),
  "ContentType" char(254) ) 
begin
  call "_SWA"."SupportedFileTypes"()
end