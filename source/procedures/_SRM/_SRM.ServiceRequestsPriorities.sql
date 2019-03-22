create procedure "_SRM"."ServiceRequestsPriorities"()
result( 
  "ServiceRequestPriority" tinyint,
  "ServiceRequestPriorityDisplay" char(25) ) 
begin call "SRM"."ServiceRequestsPriorities"()
end