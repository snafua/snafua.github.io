create procedure "_SEAS"."LubeOilLubricantsList"( in @Sort long varchar,in @Filter long varchar ) 
result( "LubricantId" integer,"LubricantDescription" char(50),"LubricantManufacturer" char(50) ) 
begin
  call "SEAS"."LubeOilLubricantsList"(@Sort,@Filter)
end