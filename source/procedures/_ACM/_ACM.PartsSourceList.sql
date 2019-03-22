create procedure --E-03519
--RJM
"_ACM"."PartsSourceList"()
result( 
  "SourceDB" char(50),
  "IsAvailable" bit,
  "HasVessels" bit ) 
begin
  call "SWA"."PartsSourceList"()
end