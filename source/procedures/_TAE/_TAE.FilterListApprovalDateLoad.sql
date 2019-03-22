create procedure "_TAE"."FilterListApprovalDateLoad"( 
  in @GetDefault bit default 0 ) 
result( 
  "Filter" char(16),
  "Label" char(56),
  "StartDate" char(32),
  "EndDate" char(32),
  "Filtered" smallint ) 
begin
  call "TAE"."FilterListApprovalDateLoad"(@GetDefault)
end