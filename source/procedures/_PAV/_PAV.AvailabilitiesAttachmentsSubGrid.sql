create procedure "_PAV"."AvailabilitiesAttachmentsSubGrid"( 
  in @RowId char(256),
  in @OrderBy char(256) default null ) 
result( "RowId" char(256),"Enclosure" bit,"Size" integer,"Description" char(200),"Id" integer,"OrderBy" char(256) ) 
begin
  call "PAV"."AvailabilitiesAttachmentsSubGrid"(@RowId,@OrderBy)
end