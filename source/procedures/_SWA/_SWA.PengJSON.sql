create procedure --E-03647
--RJM
"_SWA"."PengJSON"( 
  in @ApplicationId integer,
  in @RowId char(1024) ) 
result( 
  "PENGJSON" long varchar ) 
begin
  select "_SWA"."LaunchPengJavaScriptObjectNotation"(null,@RowId,@ApplicationId) as "PENGJSON"
end