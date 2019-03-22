create procedure "_SRM"."ServiceRequestStatus"( 
  in @RowId char(1024) ) 
result( "ServiceRequestStatus" char(25) ) 
begin call "SRM"."ServiceRequestStatus"(@RowId)
end