create procedure "_SEAS"."ChemistryMessageGenerate"( 
  in @VesselId smallint,
  in @Month char(10) ) 
result( 
  "Message" long varchar,
  "MessageFrom" long varchar,
  "MessageTo" long varchar,
  "MessageSubject" char(255) ) 
begin
  call "SEAS"."ChemistryMessageGenerate"(@VesselId,@Month)
end