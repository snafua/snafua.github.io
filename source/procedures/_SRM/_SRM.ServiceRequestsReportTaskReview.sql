create procedure "_SRM"."ServiceRequestsReportTaskReview"()
result( 
  "ID" char(20),
  "Title" char(128),
  "Start Date" date,
  "Due Date" date,
  "% Complete" integer,
  "Status" char(25),
  "Assigned To" char(256),
  "Customer" long varchar,
  "POC" char(256),
  "Lead Branch" char(10),
  "Ship Class" long varchar,
  "Transalt Number" char(25),
  "LastMileStone" char(80),
  "LastProgressUpdate" char(16),
  "LastProgressComment" long varchar ) 
begin
  call "SRM"."ServiceRequestsReportTaskReview"()
end