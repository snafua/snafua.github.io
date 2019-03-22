create procedure --B-20725 E-04408
--RJM
"_TAE"."TransaltsCommentSave"( 
  in @TransaltId integer,
  in @VesselId integer,
  in @ShipStatus char(25),
  in @Comment long varchar,
  in @IsEncoded bit default 0 ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2019-02-04 RJM B-20725 E-04408 Updated to Decode @Comment if encoded or clean if not
*/
  call "TAE"."TransaltsCommentSave"(@TransaltId,@VesselId,@ShipStatus,@Comment,@IsEncoded)
end