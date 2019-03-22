create procedure "_SEAS"."LubeOilGenerateMessage"( in @VesselId smallint ) 
result( "MessageFrom" char(255),"MessageTo" long varchar,"MessageSubject" long varchar,"MessageText" long varchar,"Samples" long varchar,"SampleCount" integer,"AlertCount" integer,"VesselName" char(80) ) 
begin
  call "SEAS"."LubeOilGenerateMessage"(@VesselId)
end