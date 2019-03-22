create procedure "_SRM"."ServiceRequestsOfficeAssignment"( 
  in @RowId char(1024) ) 
result( "OfficeCodeId" integer,"OfficeCodeDisplay" char(128) ) 
begin call "SRM"."ServiceRequestsOfficeAssignment"(@RowId)
end