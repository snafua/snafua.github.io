create procedure "_SRM"."ServiceRequestsUserAssignment"( 
  in @RowId char(1024),
  in @OfficeCodeId integer ) 
result( "AssignedToUserId" integer,"AssignedToUserFullName" char(256) ) 
begin call "SRM"."ServiceRequestsUserAssignment"(@RowId,@OfficeCodeId)
end