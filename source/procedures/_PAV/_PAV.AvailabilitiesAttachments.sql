create procedure "_PAV"."AvailabilitiesAttachments"( 
  in @NodeId char(512),
  in @RowId char(512),
  in @Module char(56) default 'Availabilities' ) 
result( 
  "RowId" char(512),
  "Id" integer,
  "Description" char(128),
  "Size" bigint,
  "Enclosure" bit ) 
begin
  call "PAV"."AvailabilitiesAttachments"(@NodeId,@RowId,@Module)
end