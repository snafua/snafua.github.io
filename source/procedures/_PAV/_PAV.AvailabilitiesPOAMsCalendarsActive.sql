create procedure "_PAV"."AvailabilitiesPOAMsCalendarsActive"( 
  in @RowId long varchar ) 
result( 
  "POAMCalendarId" integer,
  "POAMCalendarDescription" char(80) ) 
begin
  call "PNG"."PlanOfActionAndMilestonesCalendars"()
end