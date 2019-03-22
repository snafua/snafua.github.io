create procedure "_PEM"."WorkItemEstimateInsertUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @EstimateFileName char(128) default null,
  in @EstimateDocument long binary default null,
  in @EstimateTitle char(128) default null,
  in @EstimateFileDate date default null ) 
result( 
  "EstimateId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemEstimateInsertUpdate"(@VesselId,@WorkItemId,@EstimateFileName,@EstimateDocument,@EstimateTitle,@EstimateFileDate)
end