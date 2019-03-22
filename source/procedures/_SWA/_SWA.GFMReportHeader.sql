create procedure "_SWA"."GFMReportHeader"( 
  in @VesselId integer,
  in @AvailabilityId integer ) 
result( 
  "SHIP" char(80),
  "Authority" char(128),
  "PPEContact" char(128),
  "RFPNO" char(128),
  "Yard" char(128),
  "Project" char(25),
  "Task" char(25),
  "EXPENDITURETYPE" char(50),
  "ReqDeliveryDate" date ) 
begin
  call "SWA"."GFMReportHeader"(@VesselId,@AvailabilityId)
end