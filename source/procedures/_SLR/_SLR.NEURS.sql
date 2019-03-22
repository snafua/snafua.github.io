create procedure "_SLR"."NEURS"( in @VesselID integer,in @Start timestamp,in @End timestamp ) 
result( 
  "SiteId" integer,"BOM" timestamp,"EOM" timestamp,"ReportDate" timestamp,"DFMCheck" integer,"JP5Check" integer,"MGOCheck" integer,"HourCheck" integer,"ReportSeperator" char(10),"SiteTitle" char(80),"Hull" char(10),"UIC" char(6),
  "1A" char(6),"1B" integer,"1C" integer,"1D" integer,"1E" integer,"1F" integer,"1G" char(2),
  "2A" integer,"2B" integer,"2C" integer,"2D" integer,"2E" integer,"2F" integer,"2G" integer,"2H" integer,"2I" integer,"2J" integer,"2K" integer,"2L" integer,"2M" integer,
  "3A" integer,"3B" integer,"3C" integer,"3D" integer,"3E" integer,"3F" integer,"3G" integer,"3H" integer,"3I" integer,"3J" integer,"3K" integer,"3L" integer,"3M" integer,"3N" integer,"3O" integer,
  "4A" integer,"4B" integer,"4C" integer,"4D" integer,"4E" integer,"4F" integer,"4G" integer,"4H" integer,"4I" integer,"4J" integer,"4K" integer,"4L" integer,"4M" integer,
  "ProcessTitle" char(50),
  "ParameterTitle" char(50),
  "NEURSNumber" char(6),
  "ReqnFormat" long varchar,
  "TransactionType" char(10),
  "ItemNumber" integer ) 
begin
  if @Vesselid = 49 then
    select * from "SLR"."NEURS_Report"(145,@Start,@End) union
    select * from "SLR"."NEURS_Report"(138,@Start,@End) union
    select * from "SLR"."NEURS_Report"(153,@Start,@End) union
    select * from "SLR"."NEURS_Report"(152,@Start,@End) union
    select * from "SLR"."NEURS_Report"(144,@Start,@End) union
    select * from "SLR"."NEURS_Report"(113,@Start,@End) union
    select * from "SLR"."NEURS_Report"(154,@Start,@End) union
    select * from "SLR"."NEURS_Report"(139,@Start,@End) union
    select * from "SLR"."NEURS_Report"(151,@Start,@End) union
    select * from "SLR"."NEURS_Report"(131,@Start,@End) union
    select * from "SLR"."NEURS_Report"(146,@Start,@End) union
    select * from "SLR"."NEURS_Report"(137,@Start,@End) union
    select * from "SLR"."NEURS_Report"(18,@Start,@End) union
    select * from "SLR"."NEURS_Report"(17,@Start,@End) union
    select * from "SLR"."NEURS_Report"(16,@Start,@End) union
    select * from "SLR"."NEURS_Report"(15,@Start,@End) union
    select * from "SLR"."NEURS_Report"(29,@Start,@End) union
    select * from "SLR"."NEURS_Report"(90,@Start,@End) union
    select * from "SLR"."NEURS_Report"(51,@Start,@End) union
    select * from "SLR"."NEURS_Report"(14,@Start,@End) union
    select * from "SLR"."NEURS_Report"(13,@Start,@End) union
    select * from "SLR"."NEURS_Report"(37,@Start,@End) union
    select * from "SLR"."NEURS_Report"(12,@Start,@End) union
    select * from "SLR"."NEURS_Report"(32,@Start,@End) union
    select * from "SLR"."NEURS_Report"(10,@Start,@End) union
    select * from "SLR"."NEURS_Report"(19,@Start,@End) union
    select * from "SLR"."NEURS_Report"(11,@Start,@End) union
    select * from "SLR"."NEURS_Report"(69,@Start,@End) union
    select * from "SLR"."NEURS_Report"(91,@Start,@End) union
    select * from "SLR"."NEURS_Report"(82,@Start,@End) union
    select * from "SLR"."NEURS_Report"(53,@Start,@End)
  else
    select * from "SLR"."NEURS_Report"(@Vesselid,@Start,@End)
  end if
end