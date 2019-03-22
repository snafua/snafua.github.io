create procedure "_VTL"."RequestDocumentsStatuses"()
result( "RequestDocumentsStatus" char(25),"DisplayOrder" tinyint ) 
begin
  call "VTL"."RequestDocumentsStatuses"()
end