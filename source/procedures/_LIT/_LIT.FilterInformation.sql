create procedure "_LIT"."FilterInformation"()
result( 
  "FilterId" integer,
  "Advanced" integer ) 
begin
  call "LIT"."FilterInformation"()
end