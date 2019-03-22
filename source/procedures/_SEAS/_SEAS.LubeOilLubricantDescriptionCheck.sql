create procedure "_SEAS"."LubeOilLubricantDescriptionCheck"( in @LubricantDescription char(50) ) 
result( "DescriptionUnique" bit ) 
begin
  call "SEAS"."LubeOilLubricantDescriptionCheck"(@LubricantDescription)
end