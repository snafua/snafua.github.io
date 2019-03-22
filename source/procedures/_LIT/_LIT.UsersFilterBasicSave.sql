create procedure "_LIT"."UsersFilterBasicSave"( 
  in @VesselList long varchar,
  in @SWBSList long varchar,
  in @WorkItemLibraryTypeList long varchar,
  in @AllText long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIT"."UsersFilterBasicSave"(@VesselList,@SWBSList,@WorkItemLibraryTypeList,@AllText)
end