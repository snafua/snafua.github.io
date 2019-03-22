create procedure "_VTL"."DocumentsRecordTypesList"()
result( 
  "DocumentRecordTypeId" integer,
  "DocumentRecordType" varchar(100) ) 
begin
  call "VTL"."DocumentsRecordTypesList"()
end