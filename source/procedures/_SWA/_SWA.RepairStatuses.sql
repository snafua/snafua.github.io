create procedure "_SWA"."RepairStatuses"( 
  in @RepairType char(10) ) 
result( 
  "RepairStatus" char(10) ) 
begin
  call "SWA"."RepairStatuses"(@RepairType)
end