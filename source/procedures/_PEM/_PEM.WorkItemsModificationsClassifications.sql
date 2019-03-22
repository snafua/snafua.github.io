create procedure "_PEM"."WorkItemsModificationsClassifications"()
result( 
  "WorkItemModClassificationCode" char(5),
  "WorkItemModClassification" char(50) ) 
begin
  call "PEM"."WorkItemsModificationsClassifications"()
end