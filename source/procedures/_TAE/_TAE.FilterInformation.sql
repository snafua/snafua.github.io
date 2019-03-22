create procedure -- JLD B-14631 2017-11-22
"_TAE"."FilterInformation"()
result( 
  "FilterId" integer,
  "Advanced" integer ) 
begin
  call "TAE"."FilterInformation"()
end