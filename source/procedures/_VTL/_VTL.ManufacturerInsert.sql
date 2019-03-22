create procedure "_VTL"."ManufacturerInsert"( in @ManufacturerName char(80) ) 
result( 
  "ManufacturerId" integer,
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."ManufacturerInsert"(@ManufacturerName)
end