create procedure "_SWA"."ApplicationFeedbackType"()
result( 
  "TypeId" integer,
  "Test" integer,
  "TypeName" char(128) ) 
begin
  call "SWA"."ApplicationFeedbackType"()
end