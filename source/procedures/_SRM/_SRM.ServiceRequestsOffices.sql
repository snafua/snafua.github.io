create procedure "_SRM"."ServiceRequestsOffices"( in @NodeId char(1024) ) 
result( "OfficeCodeId" integer,
  "OfficeCodeDisplay" char(128) ) 
begin
  call "SRM"."ServiceRequestsOffices"(@NodeId)
end