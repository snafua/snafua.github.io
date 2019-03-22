create procedure "_VTL"."VesselsGetDocumentsLocation"( in @VTLVesselId smallint ) 
result( 
  "DocumentTitle" varchar(255),
  "DocumentFileName" varchar(255),
  "DocumentNumber" varchar(50),
  "DocumentAltNumber" varchar(50),
  "DocumentId" integer,
  "VTLVesselId" smallint,
  "Location" char(100),
  "Quantity" integer,"VTLVesselName" char(100) ) 
begin
  call "VTL"."VesselsGetDocumentsLocation"(@VTLVesselId)
end