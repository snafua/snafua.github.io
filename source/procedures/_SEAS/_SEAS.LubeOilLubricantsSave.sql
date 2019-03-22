create procedure "_SEAS"."LubeOilLubricantsSave"( in @LubricantId integer,in @LubricantDescription char(50),in @LubricantTypeId char(10),in @LubricantManufacturerId integer,in @LubricantProperties long varchar ) 
result( "SaveSucceeded" bit,"LubricantId" integer ) 
begin
  call "SEAS"."LubeOilLubricantsSave"(@LubricantId,@LubricantDescription,@LubricantTypeId,@LubricantManufacturerId,@LubricantProperties)
end