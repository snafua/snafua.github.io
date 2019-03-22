create procedure "_SEAS"."LubeOilLubricantsManufacturersDelete"( in @ManufacturerId integer ) 
result( "DeleteSucceeded" bit ) 
begin
  call "SEAS"."LubeOilLubricantsManufacturersDelete"(@ManufacturerId)
end