create procedure --RJM
"_PAV"."TaskCodesList"( 
  in @VesselId smallint,
  in @IsEncoded bit default 0 ) 
result( 
  "TaskCode" char(50) ) 
begin
  if @IsEncoded is null then
    set @IsEncoded = 0
  end if;
  call "PAV"."TaskCodesList"(@VesselId,@IsEncoded)
end