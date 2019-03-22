create procedure "_SWA"."NavigationStateSave"( 
  in @NavPinned char(5),
  in @NavOpen char(5) ) 
begin
  call "_SWA"."PreferenceBooleanSave"('NavPinned',@NavPinned);
  call "_SWA"."PreferenceBooleanSave"('NavOpen',@NavOpen)
end