create procedure "_VTL"."RequestDrawingNumberStatus"()
result( "RequestDrawingNumberStatusId" integer,"RequestDrawingNumberStatus" char(25),"DisplayOrder" tinyint ) 
begin
  call "VTL"."RequestDrawingNumberStatus"()
end