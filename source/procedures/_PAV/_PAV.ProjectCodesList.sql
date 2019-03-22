create procedure --RJM
"_PAV"."ProjectCodesList"( 
  in @VesselId smallint,
  in @IsEncoded bit default 0 ) 
result( 
  "ProjectCode" char(50) ) 
begin
  if @IsEncoded is null then
    set @IsEncoded = 0
  end if;
  call "PAV"."ProjectCodesList"(@VesselId,@IsEncoded)
end