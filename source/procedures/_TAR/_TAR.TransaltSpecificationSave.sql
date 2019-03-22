create procedure "_TAR"."TransaltSpecificationSave"( in @RowId char(1024),
  in @SpecificationIsActive bit default 1,
  in @SpecificationFileName char(128) default null,
  in @Specification long binary default null ) 
result( "RowId" char(1024),
  "SpecificationId" integer,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "TAR"."TransaltSpecificationSave"(@RowId,@SpecificationIsActive,@SpecificationFileName,@Specification)
end