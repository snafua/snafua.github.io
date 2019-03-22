create procedure "_PNG"."WorkRequestsReport"( 
  in @RowIds long varchar ) 
result( 
  "VesselId" char(20),
  "WorkRequestId" char(20),
  "A1" char(80),
  "A2" char(80),
  "A3" char(80),
  "A4" char(80),
  "A5" char(80),
  "A6" char(80),
  "A7" char(80),
  "A8" char(80),
  "A9" char(80),
  "A10" char(80),
  "B1" long varchar,
  "B2" long varchar,
  "B3" long varchar,
  "B4" long varchar,
  "B5" long varchar,
  "B6" long varchar,
  "C1" long varchar,
  "D1" long varchar,
  "ReportTitle" char(50) ) 
begin
  call "PNG"."WorkRequestsReport"(@RowIds)
end