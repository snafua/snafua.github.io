create procedure "_SWA"."RepairSubTypes"( 
  in @InitiationSourceId integer default null ) 
result( 
  "InitiationSourceSubTypeTitle" char(80),
  "InitiationSourceSubTypeId" integer,
  "IsDisabled" bit ) 
begin
  call "SWA"."RepairSubTypes"(@InitiationSourceId)
end