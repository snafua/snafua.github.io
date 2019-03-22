create procedure --Procedure _PAV.DefaultWorkItemNumber.sql
-- RJM 2013-06-12
"_PAV"."DefaultWorkItemNumber"( 
  in @VesselId smallint,
  in @ContractId integer,
  in @SWBS char(4) ) 
result( 
  "WorkItemNumber" char(25) ) 
begin
  --RMannix & June 2013
  --Generate next unused Work Item number in format of left 2 chars of SWBS and right 2 digits of last numeric Work Item number + 1
  --Ignore existing alhpanumeric WI numbers and decimals, pad single digits with leading zero
  select "PAV"."DefaultWorkItemNumber"(@VesselId,@ContractId,@SWBS)
end