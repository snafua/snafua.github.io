create procedure "_SWA"."AdditionalDetails"( 
  in @ApplicationId integer,
  in @RowId char(1024) ) 
result( 
  "DetailName" char(128),
  "DetailValue" long varchar ) 
begin
  call "SWA"."AdditionalDetails"(@ApplicationId,@RowId)
end