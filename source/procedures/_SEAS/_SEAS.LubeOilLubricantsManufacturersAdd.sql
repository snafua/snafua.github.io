create procedure "_SEAS"."LubeOilLubricantsManufacturersAdd"( in @ManufacturerTitle char(50) ) 
result( "AddSucceeded" bit,"ManufacturerId" integer ) 
begin
  call "SEAS"."LubeOilLubricantsManufacturersAdd"(@ManufacturerTitle)
end