create procedure "_SPM"."FilterBasicSave"( 
  in @Date long varchar,
  in @VesselList long varchar,
  in @SWBSList long varchar,
  in @StatusList long varchar,
  in @AllText long varchar default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SPM"."FilterBasicSave"(@Date,@VesselList,@SWBSList,@StatusList,@Alltext)
end