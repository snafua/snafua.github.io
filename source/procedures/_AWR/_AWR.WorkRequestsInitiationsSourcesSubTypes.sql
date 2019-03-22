create procedure --JLD
"_AWR"."WorkRequestsInitiationsSourcesSubTypes"()
result( 
  "InitiationSourceSubTypeId" integer,
  "InitiationSourceSubTypeTitle" char(80),
  "InitiationSourceId" integer,
  "InitiationSourceTitle" char(80) ) 
begin
  /*
2019-02-27 JLD E-04955 B-21344 Created
*/
  call "AWR"."WorkRequestsInitiationsSourcesSubTypes"()
end