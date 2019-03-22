create procedure "_VTL"."VTLDocumentsRelationshipTypes"()
result( 
  "DocumentRelationShipTypeId" smallint,"DocumentRelationShipType" char(100) ) 
begin
  call "VTL"."VTLDocumentsRelationshipTypes"()
end