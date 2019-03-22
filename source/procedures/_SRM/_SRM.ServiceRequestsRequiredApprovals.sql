create procedure "_SRM"."ServiceRequestsRequiredApprovals"()
result( 
  "ServiceRequestsRequiredApproval" char(50) ) 
begin call "SRM"."ServiceRequestsRequiredApprovals"()
end