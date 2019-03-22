create procedure --RJM
"_AWB"."RunningHoursDetails"( 
  in @NodeId char(1024) default null,
  in @VesselId integer default null ) 
result( 
  "ReportId" integer,
  "ReportType" char(4),
  "VesselId" integer,
  "VesselName" char(80),
  "VesselClassId" integer,
  "VesselClass" char(50),
  "VesselProgramManager" char(10),
  "VesselPermissions" integer ) 
begin
  /*
2018-08-22 RJM E-04250
*/
  declare @VesselIdEx integer;
  if("ECO"."CheckNull"(@NodeId) is not null) then
    set @VesselIdEx = "SWA"."KeyValuePairParse"(@NodeId,'VesselId')
  end if;
  if(@VesselIdEx is null) then
    set @VesselIdEx = @VesselId
  end if;
  call "AWB"."RunningHoursDetails"(@VesselId)
end