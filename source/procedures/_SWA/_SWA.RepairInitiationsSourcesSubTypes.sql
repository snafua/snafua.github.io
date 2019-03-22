create procedure --E-03420
--RJM
"_SWA"."RepairInitiationsSourcesSubTypes"( 
  in @InitiationSourceId integer default null ) 
result( 
  "InitiationSourceSubTypeTitle" char(80),
  "InitiationSourceSubTypeId" integer ) 
begin
  call "SWA"."RepairInitiationsSourcesSubTypes"(@InitiationSourceId)
end