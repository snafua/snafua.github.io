create procedure "_SWA"."MEBCReportVesselChart"( 
  in @VesselId char(4),
  in @Criticality char(2) default '*' ) 
result( 
  "Title" char(80),
  "Date1" char(6),
  "DateValue1" integer,
  "Date2" char(6),
  "DateValue2" integer,
  "Date3" char(6),
  "DateValue3" integer,
  "Date4" char(6),
  "DateValue4" integer,
  "Date5" char(6),
  "DateValue5" integer,
  "Date6" char(6),
  "DateValue6" integer,
  "Date7" char(6),
  "DateValue7" integer,
  "Date8" char(6),
  "DateValue8" integer,
  "Date9" char(6),
  "DateValue9" integer,
  "Date10" char(6),
  "DateValue10" integer,
  "Date11" char(6),
  "DateValue11" integer,
  "Date12" char(6),
  "DateValue12" integer ) 
begin
  if "ECO"."CheckNull"(@Criticality) is null then
    set @Criticality = '*'
  end if;
  call "SWA"."MEBCReportVesselChart"(@VesselId,@Criticality)
end