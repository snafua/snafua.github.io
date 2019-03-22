create procedure "_SWA"."ModulesLoad"()
result( 
  "ModuleId" integer,
  "ModuleLocation" char(255) ) 
begin
  call "SWA"."ModulesLoad"()
end