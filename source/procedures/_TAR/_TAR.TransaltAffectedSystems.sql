create procedure "_TAR"."TransaltAffectedSystems"()
result( 
  "AffectedSystemId" integer,
  "AffectedSystem" char(50) ) 
begin
  call "TAR"."TransaltAffectedSystems"()
end