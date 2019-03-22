create procedure "_SWA"."CustomFilterList"( 
  in @ApplicationId integer ) 
result( 
  "Name" char(64),
  "DisplayedAs" char(64),
  "DisplayedAsPlural" char(64),
  "Type" char(8),
  "Filter" long varchar,
  "Label" char(256) ) 
begin
  call "SWA"."CustomFilterList"(@ApplicationId)
end