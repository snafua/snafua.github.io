create procedure --E-04165
--RJM
"_PNG"."WorkRequestsReportParts"( 
  in @VesselId integer default null,
  in @WorkRequestId integer default null ) 
result( 
  "PartNumber" char(80),
  "PartDescription" char(80),
  "PartRequired" char(80),
  "NavyStockNumber" char(25) ) 
begin
  /*
2018-05-09 RJM E-04165, B-17942 Added NSN
*/
  call "PNG"."WorkRequestsReportParts"(@VesselId,@WorkRequestId)
end