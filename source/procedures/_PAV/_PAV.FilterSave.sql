create procedure "_PAV"."FilterSave"( 
  --IN @Module      CHAR(128),
  in @AndOr integer,
  in @JSONValues long varchar,
  in @Description char(128) default null,
  in @IsAdvanced bit default 1 ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PAV"."FilterSave"(@AndOr,@JSONValues,@Description,@IsAdvanced)
end