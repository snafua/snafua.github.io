create function "_SRM"."ServiceRequestsUserStatus"()
returns char(10)
begin
  declare @PersonnelStatus char(10);
  set @PersonnelStatus = "SRM"."ServiceRequestsUserStatus"();
  return(@PersonnelStatus)
end