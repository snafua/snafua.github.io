create procedure "_SWA"."SuggestionsDialog"()
result( 
  "SuggestionToId" integer,
  "SuggestionTo" char(256),
  "SuggestionFromId" integer,
  "SuggestionFrom" char(256) ) 
begin
  call "SWA"."SuggestionsDialog"()
end