create procedure -- Procedure _PAV.WorkItemList.sql
-- RJM 2013-06-12 To populate dropdown for existing WorkItems by vessel and Contract
"_PAV"."WorkItemList"( 
  in @VesselId smallint,
  in @ContractId integer ) 
result( 
  "WorkItemId" integer,
  "WorkItem" char(128) ) 
begin
  call "PAV"."WorkItemList"(@VesselId,@ContractId)
end