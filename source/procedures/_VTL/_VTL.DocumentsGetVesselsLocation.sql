create procedure "_VTL"."DocumentsGetVesselsLocation"( in @RowId char(1024) ) 
result( 
  "DocumentId" integer,
  "VTLVesselId" smallint,
  "Location" char(100),
  "Quantity" integer,"VTLVesselName" char(100) ) 
begin
  call "VTL"."DocumentsGetVesselsLocation"(@RowId)
end