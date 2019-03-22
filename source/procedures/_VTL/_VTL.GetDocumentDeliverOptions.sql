create procedure "_VTL"."GetDocumentDeliverOptions"()
result( 
  "DeliverOptionId" smallint,"DeliverOption" char(100) ) 
begin
  call "VTL"."GetDocumentDeliverOptions"()
end