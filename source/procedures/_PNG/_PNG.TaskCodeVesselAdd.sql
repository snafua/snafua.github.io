create procedure --RJM
"_PNG"."TaskCodeVesselAdd"( 
  in @TaskCode char(50),
  in @VesselId smallint,
  in @IsEncoded bit default 0 ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  if @IsEncoded is null then
    set @IsEncoded = 0
  end if;
  call "PNG"."TaskCodeVesselAdd"(@TaskCode,@VesselId,@IsEncoded)
end