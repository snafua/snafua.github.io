create procedure "_SHC"."FilterSave"( 
  in @AndOr integer,
  in @JSONValues long varchar,
  in @Description char(128) default null,
  in @IsAdvanced bit default 1 ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SHC"."FilterSave"(@AndOr,@JSONValues,@Description,@IsAdvanced)
end