create procedure "_VTL"."DocumentsManufacturers"( in @ManufacturerName char(80) default null ) 
result( 
  "ManufacturerId" integer,
  "ManufacturerName" char(80) ) 
begin
  call "VTL"."DocumentsManufacturers"(@ManufacturerName)
end