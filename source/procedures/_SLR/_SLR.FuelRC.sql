create procedure "_SLR"."FuelRC"( in @week integer,in @year integer ) 
result( "PM" varchar(3),"UIC" varchar(6),"SHIP_TYPE" varchar(6),"SHIP_NAME" varchar(50),"OP_PERIOD_DATES" varchar(26),"OP_WEEK" integer,"OP_MONTH" char(26),"AOR" char(6),"ACT_HOURS_UW" integer,"ACT_HOURS_IPT" integer,"ACT_HOURS_IPT_OFF" integer,"ACT_DFM_UW" integer,"ACT_DFM_IPT" integer,"ACT_DFM_IPT_OFF" integer,"ACT_JPS_5_UW" integer,"ACT_JPS_5_IPT" integer,"ACT_JPS_5_IPT_OFF" integer,"ACT_MGO_UW" integer,"ACT_MGO_IPT" integer,"ACT_MGO_IPT_OFF" integer,"ACT_TOT_FUEL_UW_GALS" integer,"ACT_UW_FUEL_COST" numeric(19,4),"ECON_UW_FUEL_EFF" double,"ECON_SPEED_KTS" integer,"ECON_BURN_RATE_GH" integer,"ECON_CSUMPT_GALS" integer,"ECON_FUEL_ECON_GALS" integer,"ECON_COST_ECON" numeric(19,4),"PGM_UW_HOURS" integer,"PGM_UW_FUEL_GALS" integer,"PGM_UW_COST" numeric(19,4),"SCHED_COMMENTS" varchar(200),"REPORTING_STATUS" varchar(6),"REPORTING_STATUS_DESC" varchar(255),"OPSUM_RMKS" char(512),"HRS_CHECK" integer,"DFM_FUEL_PRICE" "money","JP5_FUEL_PRICE" "money","MGO_FUEL_PRICE" "money","SCHED_OPSUM_NOTES" varchar(456) ) 
begin
  select "PM",
    "UIC",
    "SHIP_TYPE",
    "SHIP_NAME",
    "OP_PERIOD_DATES",
    "OP_WEEK","OP_MONTH",
    "AOR","ACT_HOURS_UW",
    "ACT_HOURS_IPT",
    "ACT_HOURS_IPT_OFF",
    "ACT_DFM_UW",
    "ACT_DFM_IPT",
    "ACT_DFM_IPT_OFF",
    "ACT_JPS_5_UW",
    "ACT_JPS_5_IPT",
    "ACT_JPS_5_IPT_OFF",
    "ACT_MGO_UW",
    "ACT_MGO_IPT",
    "ACT_MGO_IPT_OFF",
    "ACT_TOT_FUEL_UW_GALS",
    "ACT_UW_FUEL_COST",
    "ECON_UW_FUEL_EFF",
    "ECON_SPEED_KTS",
    "ECON_BURN_RATE_GH",
    "ECON_CSUMPT_GALS",
    "ECON_FUEL_ECON_GALS",
    "ECON_COST_ECON",
    "PGM_UW_HOURS",
    "PGM_UW_FUEL_GALS",
    "PGM_UW_COST",
    "SCHED_COMMENTS",
    "REPORTING_STATUS",
    "REPORTING_STATUS_DESC",
    "OPSUM_RMKS",
    "HRS_CHECK",
    "DFM_FUEL_PRICE",
    "JP5_FUEL_PRICE",
    "MGO_FUEL_PRICE",
    "SCHED_OPSUM_NOTES"
    from "slr"."FuelReportcards"(@week,@year)
    order by "SHIP_TYPE" asc,"SHIP_NAME" asc
end