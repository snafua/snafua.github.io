create procedure "_NS5"."PrepareFaultPeak"( in @Index integer,in @Level integer,in @Exceed integer,in @Range integer,in @Pickup char(2),in @Shaft char(4),in @Order char(10),in @Code char(10) ) 
result( "ResultText" long varchar ) 
begin
  call "NS5"."PrepareFaultPeak"(@Index,@Level,@Exceed,@Range,@Pickup,@Shaft,@Order,@Code)
end