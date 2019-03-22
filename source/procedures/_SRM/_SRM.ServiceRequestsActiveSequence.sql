create procedure "_SRM"."ServiceRequestsActiveSequence"()
result( "ActiveSequence" tinyint,
  "ActiveSequenceDesc" char(20) ) 
begin
  call "SRM"."ServiceRequestsActiveSequence"()
end