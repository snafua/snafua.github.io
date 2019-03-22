create procedure "_LIT"."AvailabilityTypeList"( 
  in @WorkItemLibraryId integer default null ) 
result( 
  "Selected" bit,
  "AvailabilityType" char(15),
  "Mandatory" bit ) 
begin
  call "LIT"."AvailabilityTypeList"(@WorkItemLibraryId)
end