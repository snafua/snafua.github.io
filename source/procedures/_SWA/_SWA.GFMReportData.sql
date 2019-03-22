create procedure "_SWA"."GFMReportData"( 
  in @VesselId integer,
  in @AvailabilityId integer ) 
result( 
  "WI" char(25),
  "SubItem" char(10),
  "GFMItemDescription" char(128),
  "MFR" char(128),
  "PartNo" char(40),
  "NSN" char(25),
  "UI" char(25),
  "QTY" integer,
  "Req" char(128),
  "POAwardDate" date,
  "PONumber" char(11),
  "EstCost" numeric(25,2),
  "RDD" char(10),
  "EDD" char(10),
  "Company" char(128),
  "CompanyAddress" char(1000),
  "POC" char(128),
  "CurrentStatus" long varchar,
  "PhoneNo" char(25),
  "Remarks" long varchar,
  "IsWorkItem" bit,
  "StatusId" integer ) 
begin
  call "SWA"."GFMReportData"(@VesselId,@AvailabilityId)
end