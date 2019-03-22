create procedure "_PEM"."WorkItemReportDelete"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemReportDelete"(@VesselId,@WorkItemId,@WorkItemReportId)
end