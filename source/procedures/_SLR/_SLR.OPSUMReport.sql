create procedure "_SLR"."OPSUMReport"( in @Vesselid integer,in @FromDate char(10),in @Todate char(10) ) 
result( "MinReportDay" date,"MaxReportDay" date,"SD" char(2),"SMY" char(5),"ED" char(2),"EMY" char(5),"RD" char(2),"RMY" char(5),"Vessel" char(80),"VesselID" integer,"Vesselname" char(80),"VesselClass" char(30),"HullNo" char(10),"UIC" char(6),"Week" char(10),"WeekID" char(2),"Underway" integer,"InPort_Tasked" integer,"INPORT_TASKED_PORT" long varchar,"InPort_Not_Tasked" integer,"INPORT_NOT_TASKED_PORT" long varchar,"Maint" integer,"MAINT_PORT" long varchar,"C_4" integer,"C_4_PORT" long varchar,"AOR" char(10),"HrsUW" integer,"HrsMan" integer,"HrsIPT" integer,"HrsIPTOFF" integer,"HourCheck" numeric(30,6),"DFMUW" integer,"DFMIPT" integer,"DFMIPTOFF" integer,"DFMOnHand" integer,"DFM" long varchar,"JP5UW" integer,"JP5IPT" integer,"JP5IPTOFF" integer,"JP5OnHand" integer,"JP5" long varchar,"MGOUW" integer,"MGOIPT" integer,"MGOIPTOFF" integer,"MGOOnHand" integer,"MGO" long varchar,"TotalFuelUW" numeric(30,6),"UWFuelCost" numeric(30,6),"UWFuelEfficiency" numeric(30,6),"EconomicSpeed" numeric(30,6),"EconomicBurnRate" numeric(30,6),"EconomicConsumption" numeric(30,6),"FuelOverEconomic" numeric(30,6),"CostOverEconomic" numeric(30,6),"ProgramUWHours" numeric(30,6),"ProgramUWFuel" numeric(30,6),"EconSpeedExceeded" char(3),"SpeedComment" long varchar,"ChiefComment" long varchar,"XSOA" long varchar,"XSOA2" long varchar,"meanreportdate" numeric(30,6),"Reports" integer ) 
/*
Author:			JMM
Purpose:
Called From:
Calls:
DbRevision:		08/24/2010
Tables:
NOTE:
*/
begin
  call "SLR"."OPSUM"(@Vesselid,@FromDate,@Todate)
end