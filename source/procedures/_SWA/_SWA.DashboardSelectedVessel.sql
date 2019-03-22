create procedure "_SWA"."DashboardSelectedVessel"()
result( 
  "VesselId" smallint ) 
begin
  declare @VesselId smallint;
  set @VesselId = "SWA"."DashboardSelectedVessel"();
  select @VesselId as "VesselId"
    from "DUMMY"
end