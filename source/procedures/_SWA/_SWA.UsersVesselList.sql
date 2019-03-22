create procedure --RJM
"_SWA"."UsersVesselList"( 
  in @ApplicationId integer ) 
result( 
  "VesselId" integer,
  "VesselName" char(80),
  "VesselClassId" integer,
  "VesselClass" char(30),
  "ProgramManagerCode" char(10),
  "VesselSubClassId" integer,
  "VesselSubClassDesc" char(20) ) 
begin
  /*
2018-07-19 RJM E-03450 added subclass
*/
  select "VesselId",
    "VesselName",
    "VesselClassId",
    "VesselClass",
    "ProgramManagerCode",
    "VesselSubClassId",
    "VesselSubClassDesc"
    from "SWA"."UsersVesselList"(@ApplicationId)
    order by "VesselName" asc
end