create procedure "_TAE"."ExecutionAvailabilities"( 
  in @RowId char(1024),
  in @AvailabilityId integer default null ) 
result( 
  "AvailabilityId" integer,
  "AvailabilityDescription" char(256) ) 
begin
  call "TAE"."ExecutionAvailabilities"(@RowId)
end