create procedure "_VTL"."FilterListDocumentsShowOnlyLoad"( 
  in @GetDefault bit default 0 ) 
result( 
  "Filter" long varchar,
  "Label" char(256),
  "Filtered" bit ) 
begin
  call "VTL"."FilterListDocumentsShowOnlyLoad"(@GetDefault)
end