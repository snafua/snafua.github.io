create procedure "_SHC"."FilterInformation"()
result( 
  "FilterId" integer,
  "Advanced" integer ) 
begin
  call "SHC"."FilterInformation"()
end