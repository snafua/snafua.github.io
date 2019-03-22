create procedure -- JHM
"_SRM"."ServiceRequestsDescription"( 
  in @RowId char(1024),
  in @IsEncoded bit default 1 ) 
result( 
  "RowId" char(1024),
  "ServiceRequestId" integer,
  "ServiceRequestDescription" long varchar,
  "CanEditDescription" bit ) 
begin
  /*
2018-05-17 JHM E-03924, B-17850 Added @IsEncoded
*/
  call "SRM"."ServiceRequestsDescription"(@RowId,@IsEncoded)
end