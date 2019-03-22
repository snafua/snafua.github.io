create procedure --E-03420
--RJM
"_SWA"."RepairInitiationsSources"()
result( 
  "InitiationSourceTitle" char(80),
  "InitiationSourceId" integer ) 
begin
  call "SWA"."RepairInitiationsSources"()
end