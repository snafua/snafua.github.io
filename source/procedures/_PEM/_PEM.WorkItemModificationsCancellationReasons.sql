create procedure --AIM
"_PEM"."WorkItemModificationsCancellationReasons"()
result( 
  "WorkItemCancellationReason" char(25),
  "WorkItemCancellationReasonDescription" char(64) ) 
begin
  /*
2018-12-19 AIM E-04599 B-19898
*/
  call "PEM"."WorkItemModificationsCancellationReasons"()
end