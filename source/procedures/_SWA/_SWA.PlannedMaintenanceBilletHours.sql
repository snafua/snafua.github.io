create procedure "_SWA"."PlannedMaintenanceBilletHours"( 
  in @RowIds long varchar ) 
result( 
  "Billet" char(240),
  "BilletId" integer,
  "RegularHours" numeric(16,2),
  "OvertimeHours" numeric(16,2),
  "RowId" char(1024) ) 
begin
  call "SWA"."PlannedMaintenanceBilletHours"(@RowIds)
end