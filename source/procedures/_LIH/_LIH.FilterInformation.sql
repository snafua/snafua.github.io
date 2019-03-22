create procedure "_LIH"."FilterInformation"()
result( 
  "FilterId" integer,
  "Advanced" integer ) 
begin
  call "LIH"."FilterInformation"()
end