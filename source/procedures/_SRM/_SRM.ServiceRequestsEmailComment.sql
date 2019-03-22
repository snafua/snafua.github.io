create procedure "_SRM"."ServiceRequestsEmailComment"( in @RowId char(1024),
  in @EmailAdresses long varchar,
  in @EmailText long varchar ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SRM"."ServiceRequestsEmailComment"(@RowId,
  @EmailAdresses,
  @EmailText)
end