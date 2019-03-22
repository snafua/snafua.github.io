create procedure "_PNG"."SpecificationsImport"( 
  in @RowId char(1024),
  in @FileName char(256),
  in @Document long varchar ) 
result( 
  "RowId" char(1024),
  "WorkItemNumber" char(25),
  "WorkItemCategory" char(3),
  "WorkItemTitle" char(128),
  "HasWorkItemLibrary" bit,
  "IsInvalid" bit,
  "IsDuplicate" bit,
  "MessageText" char(3000) ) 
begin
  call "PNG"."SpecificationsImport"(@RowId,@FileName,@Document)
end