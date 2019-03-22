create procedure "_SPM"."FilterInformation"()
result( 
  "FilterId" integer,
  "Advanced" integer ) 
begin
  call "SPM"."FilterInformation"()
end