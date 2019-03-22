create procedure -- JHM
"_PEM"."WorkItemReportConditionActions"( 
  in @PENGVersion char(12) default '2.0' ) 
result( 
  "ConditionActionId" integer,
  "ConditionActionDescription" char(50) ) 
begin
  /*
2018-07-18 - JHM - E-04142: Added support for changing RFP to CCO
*/
  call "PEM"."WorkItemReportConditionActions"(@PENGVersion)
end