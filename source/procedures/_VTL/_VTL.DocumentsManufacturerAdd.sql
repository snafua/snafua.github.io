create procedure "_VTL"."DocumentsManufacturerAdd"( in @ManufacturerName char(80) ) 
result( 
  "ManufacturerId" integer,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "VTL"."DocumentsManufacturerAdd"(@ManufacturerName)
end