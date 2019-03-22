create procedure "_SEAS"."LubeOilFiltersList"( in @Sort long varchar,in @Filter long varchar ) 
result( "FilterId" integer,"FilterDescription" char(80) ) 
begin
  call "SEAS"."LubeOilFiltersList"(@Sort,@Filter)
end