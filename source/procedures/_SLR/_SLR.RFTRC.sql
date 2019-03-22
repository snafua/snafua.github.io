create procedure "_SLR"."RFTRC"( in @month integer,in @year integer ) 
result( "SHIP_TYPE" char(6),"SHIP_NAME" char(50),"UNDERWAY" integer,"INPORT_TASKED" integer,"INPORT_NOT_TASKED" integer,"MAINT" integer,"C_4" integer,"RFT_TARGET" integer,"MAINT_TARGET" integer,"LOG_DATE" char(30),"UIC" integer ) 
begin
  select "SHIP_TYPE","SHIP_NAME","UNDERWAY","INPORT_TASKED","INPORT_NOT_TASKED","MAINT","C_4","RFT_TARGET","MAINT_TARGET","LOG_DATE","UIC"
    from "slr"."RFTReportCards"(@month,@year)
    order by "SHIP_TYPE" asc,"SHIP_NAME" asc
end