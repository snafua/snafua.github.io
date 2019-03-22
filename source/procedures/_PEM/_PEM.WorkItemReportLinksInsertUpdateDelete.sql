create procedure "_PEM"."WorkItemReportLinksInsertUpdateDelete"( 
  in @VesselId integer,
  in @ContractId integer,
  in @WorkItemId integer,
  in @ReportId integer,
  in @LinkId integer,
  in @LinkType char(128),
  in @LinkNumber integer,
  in @LinkTitle char(128),
  in @LinkStatus char(128),
  in @LinkActive bit default 1,
  in @DateInserted date default null,
  in @DateUpdated date default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PEM"."WorkItemReportLinksInsertUpdateDelete"(@VesselId,@ContractId,@WorkItemId,@ReportId,@LinkId,@LinkType,@LinkNumber,@LinkTitle,@LinkStatus,@DateInserted,@DateUpdated)
end