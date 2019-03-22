create procedure "_SEAS"."ChemistryDisplaySettingsSave"( 
  in @Panel char(20),
  in @Size char(10) ) 
begin
  call "SEAS"."ChemistryDisplaySettingsSave"(@Panel,@Size)
end