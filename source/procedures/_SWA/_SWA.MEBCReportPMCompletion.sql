create procedure "_SWA"."MEBCReportPMCompletion"( 
  in @VesselIds long varchar,
  in @Criticality char(2) default '*' ) 
result( 
  "VesselName" char(80),
  "DateValue1" char(6),
  "DateValue2" char(6),
  "DateValue3" char(6),
  "DateValue4" char(6),
  "DateValue5" char(6),
  "DateValue6" char(6),
  "DateValue7" char(6),
  "DateValue8" char(6),
  "DateValue9" char(6),
  "DateValue10" char(6),
  "DateValue11" char(6),
  "DateValue12" char(6) ) 
begin
  if "ECO"."CheckNull"(@Criticality) is null then
    set @Criticality = '*'
  end if;
  call "SWA"."MEBCReportPMCompletion"(@VesselIds,@Criticality)
end