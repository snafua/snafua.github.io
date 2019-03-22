create procedure "_PAV"."WorkItemsPartsSourceList"()
result( 
  "SourceDB" char(50),
  "IsAvailable" bit,
  "HasVessels" bit ) 
begin
  call "PAV"."WorkItemsPartsSourceList"()
end