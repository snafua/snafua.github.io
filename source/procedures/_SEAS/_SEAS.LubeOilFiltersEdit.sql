create procedure "_SEAS"."LubeOilFiltersEdit"( in @FilterId integer ) 
result( "FilterId" integer,"FilterDescription" char(80),"FilterTypeId" char(15),"FilterMethodId" char(15),"FilterRating" integer ) 
begin
  call "SEAS"."LubeOilFiltersEdit"(@FilterId)
end