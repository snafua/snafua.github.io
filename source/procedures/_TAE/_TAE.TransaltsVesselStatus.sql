create procedure "_TAE"."TransaltsVesselStatus"()
result( 
  "VesselStatus" char(25) ) 
begin
  --2017-06-09 RJM added VesselStatus
  --2017-09-14 RJM created this copy of TAE.ExecutionStatus to display all vessels in the transalt
  call "TAE"."TransaltsVesselStatus"()
end