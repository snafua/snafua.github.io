create procedure "_PAV"."WorkItemAccountList"( 
  in @VesselId integer,
  in @WorkPackId integer ) 
result( 
  "FundingId" integer,
  "ProjectCode" char(25),
  "TaskCode" char(25),
  "Account" char(25),
  "DefaultFunding" bit ) 
begin
  call "PAV"."WorkItemAccountList"(@VesselId,@WorkPackId)
end