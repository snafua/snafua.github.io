create procedure "_SWA"."UsersFiltersSave"( 
  in @ApplicationId integer,
  in @Data long varchar,
  in @AndOr integer default 1,
  in @IsAdvanced bit default 0,
  in @IsEncoded bit default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-08-06 JHM - Added IsEncoded attribute
*/
  -- Added this logic because older versions of VTL are sending in encoded data but not including the flag
  if(@IsEncoded is null) then
    if(@ApplicationId = "VTL"."ApplicationId"()) then
      set @IsEncoded = 1
    else
      set @IsEncoded = 0
    end if
  end if;
  call "SWA"."UsersFiltersSave"(@ApplicationId,@Data,@AndOr,@IsAdvanced,@IsEncoded)
end