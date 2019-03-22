create procedure "_VTL"."UserRoleCanEdit"()
result( "ConnectedUserId" integer,"IsAfloat" bit,"IsCustomer" bit,"CanEditVessel" bit,"CanEditQuickEdit" bit ) 
begin
  call "VTL"."UserRoleCanEdit"()
end