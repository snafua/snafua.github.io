create procedure "_VTL"."DocumentSubmitUpdate"( in @DocumentSubmitId integer,in @DocumentSubmitStatus char(10) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "VTL"."DocumentSubmitUpdate"(@DocumentSubmitId,@DocumentSubmitStatus)
end