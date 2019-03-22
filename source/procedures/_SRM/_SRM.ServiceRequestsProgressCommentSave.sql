create procedure "_SRM"."ServiceRequestsProgressCommentSave"( 
  in @RowId char(1024),
  in @ServiceRequestComment long varchar ) 
result( "RowId" char(1024),"Success" bit,"ErrorMessage" long varchar ) 
begin call "SRM"."ServiceRequestsProgressCommentSave"(@RowId,@ServiceRequestComment)
end