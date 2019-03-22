create procedure "_VTL"."DocumentsVesselsEquipment"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "VesselId" smallint,
  "VesselName" char(123),
  "VesselClassId" smallint,
  "VesselClass" char(100),
  "VesselPM" char(4),
  "VesselEquipmentDesc" char(80),
  "HSC" varchar(12),
  "CLIPHSC" varchar(12),
  "TotalRows" integer ) 
begin call "VTL"."DocumentsVesselsEquipment"(@RowId)
end