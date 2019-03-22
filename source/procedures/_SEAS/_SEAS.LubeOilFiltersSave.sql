create procedure "_SEAS"."LubeOilFiltersSave"( in @FilterId integer,in @FilterName char(80),in @FilterTypeId char(15),in @FilterMethodId char(15),in @FilterRating integer ) 
result( "SaveSucceeded" bit,"FilterId" integer ) 
begin
  call "SEAS"."LubeOilFiltersSave"(@FilterId,@FilterName,@FilterTypeId,@FilterMethodId,@FilterRating)
end