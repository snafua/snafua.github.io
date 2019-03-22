create procedure "_PEM"."WorkItemSpecificationInsertUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @SpecificationFileName char(256) default null,
  in @SpecificationDocument long binary default null,
  in @SpecificationTitle char(128) default null,
  in @SpecificationFileDate date default null ) 
result( 
  "SpecificationId" integer,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PEM"."WorkItemSpecificationInsertUpdate"(@VesselId,@WorkItemId,@SpecificationFileName,@SpecificationDocument,@SpecificationTitle,@SpecificationFileDate)
end