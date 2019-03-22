create function "_SWA"."GridSavedColumnsLoad"( 
  in @ApplicationId integer ) 
returns long varchar
begin
  return("SWA"."GridSavedColumnsLoad"(@ApplicationId))
end