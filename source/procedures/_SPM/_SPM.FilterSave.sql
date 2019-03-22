create procedure "_SPM"."FilterSave"( 
  in @AndOr integer,
  in @JSONValues long varchar,
  in @Description char(128) default null,
  in @IsAdvanced bit default 1 ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SPM"."FilterSave"(@AndOr,@JSONValues,@Description,@IsAdvanced)
end