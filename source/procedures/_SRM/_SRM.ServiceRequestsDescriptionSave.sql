create procedure "_SRM"."ServiceRequestsDescriptionSave"( 
  in @RowId char(1024),
  in @ServiceRequestDescription long varchar ) 
result( "RowId" char(1024),"Success" bit,"ErrorMessage" long varchar ) 
begin call "SRM"."ServiceRequestsDescriptionSave"(@RowId,@ServiceRequestDescription)
end