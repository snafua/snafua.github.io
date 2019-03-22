create procedure "_NS5"."PrepareReferenceData"( in @RPM1 char(25),in @RPM2 char(25),in @REF1 char(25),in @REF2 char(25),in @AVGS char(25) ) 
result( "ResultText" long varchar ) 
begin
  call "NS5"."PrepareReferenceData"(@RPM1,@RPM2,@REF1,@REF2,@AVGS)
end