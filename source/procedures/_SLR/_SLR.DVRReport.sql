create procedure "_SLR"."DVRReport"( in @Vesselid integer,
  in @Timefrom timestamp default null,
  in @timeto timestamp default null ) 
result( "sitetitle" char(80),"SiteID" smallint,"LocalTimeStamp" timestamp,"LogSeqID" integer,"Fleet" integer,"MinUW" integer,"MinMan" integer,"MinPort" integer,"MinCold" integer,"HoursToday" numeric,"AddComment" char(10),"AddCom" char(255),"EngineRevs" numeric,"EngineMiles" numeric,"ObservedMiles" numeric,"SpeedObserved" numeric,"SpeedEconomic" numeric,"Slip" numeric,"ElectricLoad" numeric,"FuelConsUWActual" numeric,"FuelConsUWProg" numeric,"FuelConsUWEconomic" numeric,"FuelConsUWExcess" numeric,"FuelConsInPortActual" numeric,"FuelConsInPortProg" numeric,"FuelConsColdIronActual" numeric,"FuelConsColdIronProg" numeric,"FuelCostUW" numeric,"FuelCostExcess" numeric,"FuelCostPort" numeric,"FuelCostCold" numeric,"FuelConsRateUWAct" numeric,"FuelConsRateUWEcon" numeric,"FuelOverEconomic" numeric,"FuelINCHOP" numeric,"DFMRecDOD" numeric,"DFMRecComm" numeric,"DFMRecFMS" numeric,"DFMConsUnderway" numeric,"DFMConsNotUnderway" numeric,"DFMConsOtherColdIron" numeric,"DFMIssUSNShips" numeric,"DFMIssDODFuelDepot" numeric,"DFMIssOtherDODAct" numeric,"DFMIssFMSorSY" numeric,"DFMGainLoss" numeric,"DFMOH" numeric,"DFMOHPer" numeric,"JP5RecDOD" numeric,"JP5RecComm" numeric,"JP5RecFMS" numeric,"JP5ConsUnderway" numeric,"JP5ConsNotUnderway" numeric,"JP5ConsOtherColdIron" numeric,"JP5IssNavyAircraft" numeric,"JP5IssCommUSMCAir" numeric,"JP5IssUSNShips" numeric,"JP5IssDODFuelDepot" numeric,"JP5IssOtherDODAct" numeric,"JP5IssFMSorSY" numeric,"JP5GainLoss" numeric,"JP5OH" numeric,"JP5OHPer" numeric,"MGORecDOD" numeric,"MGORecComm" numeric,"MGORecFMS" numeric,"MGOConsUnderway" numeric,"MGOConsNotUnderway" numeric,"MGOConsOtherColdIron" numeric,"MGOIssUSNShips" numeric,"MGOIssDODFuelDepot" numeric,"MGOIssOtherDODAct" numeric,"MGOIssFMSorSY" numeric,"MGOGainLoss" numeric,"MGOOH" numeric,"MGOOHPer" numeric,"ShipsPotWtrProduced" numeric,"ShipsPotWtrCons" numeric,"ShipsPotWtrRecFromCar" numeric,"ShipsPotWtrRecFromShore" numeric,"ShipsPotWtrxferToCar" numeric,"ShipsPotWtrxferToShore" numeric,"ShipsPotWtrOH" numeric,"ShipsPotWtrOHPer" numeric,"ShipsFWProduced" numeric,"ShipsFWCons" numeric,"ShipsFWRecFromCar" numeric,"ShipsFWRecFromShore" numeric,"ShipsFWxferToCar" numeric,"ShipsFWxferToShore" numeric,"ShipsFWOH" numeric,"ShipsFWOHPer" numeric,"CarPotWtrConsumed" numeric,"CarPotWtrProduced" numeric,"CarPotWtrRecFromShip" numeric,"CarPotWtrRecFromShore" numeric,"CarPotWtrxferToShip" numeric,"CarPotWtrxferToShore" numeric,"CarPotWtrOH" numeric,"CarPotWtrOHPer" numeric,"CarFWConsumed" numeric,"CarFWProduced" numeric,"CarFWRecFromShip" numeric,"CarFWRecFromShore" numeric,"CarFWxferToShip" numeric,"CarFWxferToShore" numeric,"CarFWOH" numeric,"CarFWOHPer" numeric,"DEOLubeOilType" char(10),"DEOLubeOilCons" numeric,"DEOLubeOilRec" numeric,"DEOLubeOilxfer" numeric,"DEOLubeOilOH" numeric,"DEOLubeOilOHPer" numeric,"GearLubeOilType" char(10),"GearLubeOilCons" numeric,"GearLubeOilRec" numeric,"GearLubeOilxfer" numeric,"GearLubeOilOH" numeric,"GearLubeOilOHPer" numeric,"HYDLubeOilType" char(10),"HYDLubeOilCons" numeric,"HYDLubeOilRec" numeric,"HYDLubeOilxfer" numeric,"HYDLubeOilOH" numeric,"HYDLubeOilOHPer" numeric,"TotalFuelCons" numeric ) 
--AddComCommentLast char(255),
--CASREP char(10),
--CASREPComment char(255),
--CASREPCommentLast char(255),
--LOSampleNumber integer,
--LOSampleDate timestamp,
--LatestVRR Char(255),
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
  select * from "SLR"."DVR"(@Vesselid,@Timefrom,@timeto)
end