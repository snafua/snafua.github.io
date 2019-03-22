create procedure "_SEAS"."LubeOilLubricantsEdit"( in @LubricantId integer ) 
result( "LubricantId" integer,"LubricantDescription" char(50),"LubricantTypeId" char(10),"LubricantManufacturerId" integer ) 
begin
  call "SEAS"."LubeOilLubricantsEdit"(@LubricantId)
end