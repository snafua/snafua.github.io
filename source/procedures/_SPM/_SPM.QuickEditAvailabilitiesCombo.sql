create procedure "_SPM"."QuickEditAvailabilitiesCombo"( 
  in @RowIds long varchar ) 
result( 
  "AvailabilityId" integer,
  "Availability" char(128) ) 
begin
  call "SPM"."QuickEditAvailabilitiesCombo"(@RowIds)
end