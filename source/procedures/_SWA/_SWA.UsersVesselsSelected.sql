create procedure "_SWA"."UsersVesselsSelected"( 
  in @ApplicationId integer ) 
result( 
  "VesselId" integer,
  "VesselName" char(80),
  "VesselClassId" integer,
  "VesselClass" char(30),
  "VesselProgramManager" char(20),
  "IsSelected" bit ) 
begin
  set @ApplicationId = "SWA"."ApplicationIdByModule"(@ApplicationId);
  call "ECO"."UsersVesselsSelected"(@ApplicationId)
end