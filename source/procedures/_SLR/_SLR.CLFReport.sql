create procedure "_SLR"."CLFReport"( in @Month integer,in @Year integer ) 
result( "sitetitle" char(80),"siteid" smallint,"LocalTimeStamp" timestamp,"ProcessTitleLogSeqID" integer,"EventInfo - Customer" long varchar,"EventInfo - Customer Ship Type" long varchar,"EventInfo - AOR" long varchar,"EventInfo - CONREP Call Out Time" long varchar,"EventInfo - CONREP Secure Time" long varchar,"EventInfo - VERTREP Call Out Time" long varchar,"EventInfo - VERTREP Secure Time" long varchar,"EventInfo - Ship Along Side Time" long varchar,"EventInfo - Ship All Lines Clear Time" long varchar,"EventInfo - Pump Start Time" long varchar,"EventInfo - Pump End Time" long varchar,"EventInfo - CONREP 1st Load Time" long varchar,"EventInfo - CONREP Last Load Time" long varchar,"EventInfo - VERTREP 1st Lift Time" long varchar,"EventInfo - VERTREP Last Lift Time" long varchar,"EventInfo - Total Labor Hours" integer,"Fuel Transferred - F-76 Received" integer,"Fuel Transferred - F-76 Delivered" integer,"Fuel Transferred - JP-5 Received" integer,"Fuel Transferred - JP-5 Delivered" integer,"Fuel Transferred - MGO Received" integer,"Fuel Transferred - MGO Delivered" integer,"INREP Received - Ordnance" integer,"INREP Received - Cargo - Hull" integer,"INREP Received - Cargo - Deck Load" integer,"INREP Received - Cargo - Provisions Chill" integer,"INREP Received - Cargo - Provisions Freeze" integer,"INREP Received - Cargo - Provisions Dry" integer,"INREP Received - Cargo - 1Q COG/Ship Store" integer,"INREP Received - Cargo - Fill" integer,"INREP Received - Fleet Freight - Provisions Chill" integer,"INREP Received - Fleet Freight - Provisions Freeze" integer,"INREP Received - Fleet Freight - Provisions Dry" integer,"INREP Received - Fleet Freight - 1Q COG/Ship Store" integer,"INREP Received - Fleet Freight - Mail" integer,"INREP Received - Fleet Freight - Other Cargo" integer,"INREP Received - Fleet Freight - DLR/ERM" integer,"INREP Received - Fleet Freight - Other Retrograde" integer,"INREP Delivered - Ordnance" integer,"INREP Delivered - Cargo - Hull" integer,"INREP Delivered - Cargo - Deck Load" integer,"INREP Delivered - Cargo - Provisions Chill" integer,"INREP Delivered - Cargo - Provisions Freeze" integer,"INREP Delivered - Cargo - Provisions Dry" integer,"INREP Delivered - Cargo - 1Q COG/Ship Store" integer,"INREP Delivered - Cargo - Fill" integer,"INREP Delivered - Fleet Freight - Provisions Chill" integer,"INREP Delivered - Fleet Freight - Provisions Freeze" integer,"INREP Delivered - Fleet Freight - Provisions Dry" integer,"INREP Delivered - Fleet Freight - 1Q COG/Ship Store" integer,"INREP Delivered - Fleet Freight - Mail" integer,"INREP Delivered - Fleet Freight - Other Cargo" integer,"INREP Delivered - Fleet Freight - DLR/ERM" integer,"INREP Delivered - Fleet Freight - Other Retrograde" integer,"CONREP Received - Ordnance" integer,"CONREP Received - Cargo - Hull" integer,"CONREP Received - Cargo - Deck Load" integer,"CONREP Received - Cargo - Provisions Chill" integer,"CONREP Received - Cargo - Provisions Freeze" integer,"CONREP Received - Cargo - Provisions Dry" integer,"CONREP Received - Cargo - 1Q COG/Ship Store" integer,"CONREP Received - Cargo - Fill" integer,"CONREP Received - Fleet Freight - Provisions Chill" integer,"CONREP Received - Fleet Freight - Provisions Freeze" integer,"CONREP Received - Fleet Freight - Provisions Dry" integer,"CONREP Received - Fleet Freight - 1Q COG/Ship Store" integer,"CONREP Received - Fleet Freight - Mail" integer,"CONREP Received - Fleet Freight - Other Cargo" integer,"CONREP Received - Fleet Freight - DLR/ERM" integer,"CONREP Received - Fleet Freight - Other Retrograde" integer,"CONREP Delivered - Ordnance" integer,"CONREP Delivered - Cargo - Hull" integer,"CONREP Delivered - Cargo - Deck Load" integer,"CONREP Delivered - Cargo - Provisions Chill" integer,"CONREP Delivered - Cargo - Provisions Freeze" integer,"CONREP Delivered - Cargo - Provisions Dry" integer,"CONREP Delivered - Cargo - 1Q COG/Ship Store" integer,"CONREP Delivered - Cargo - Fill" integer,"CONREP Delivered - Fleet Freight - Provisions Chill" integer,"CONREP Delivered - Fleet Freight - Provisions Freeze" integer,"CONREP Delivered - Fleet Freight - Provisions Dry" integer,"CONREP Delivered - Fleet Freight - 1Q COG/Ship Store" integer,"CONREP Delivered - Fleet Freight - Mail" integer,"CONREP Delivered - Fleet Freight - Other Cargo" integer,"CONREP Delivered - Fleet Freight - DLR/ERM" integer,"CONREP Delivered - Fleet Freight - Other Retrograde" integer,"VERTREP Received - Ordnance" integer,"VERTREP Received - Cargo - Hull" integer,"VERTREP Received - Cargo - Deck Load" integer,"VERTREP Received - Cargo - Provisions Chill" integer,"VERTREP Received - Cargo - Provisions Freeze" integer,"VERTREP Received - Cargo - Provisions Dry" integer,"VERTREP Received - Cargo - 1Q COG/Ship Store" integer,"VERTREP Received - Cargo - Fill" integer,"VERTREP Received - Fleet Freight - Provisions Chill" integer,"VERTREP Received - Fleet Freight - Provisions Freeze" integer,"VERTREP Received - Fleet Freight - Provisions Dry" integer,"VERTREP Received - Fleet Freight - 1Q COG/Ship Store" integer,"VERTREP Received - Fleet Freight - Mail" integer,"VERTREP Received - Fleet Freight - Other Cargo" integer,"VERTREP Received - Fleet Freight - DLR/ERM" integer,"VERTREP Received - Fleet Freight - Other Retrograde" integer,"VERTREP Delivered - Ordnance" integer,"VERTREP Delivered - Cargo - Hull" integer,"VERTREP Delivered - Cargo - Deck Load" integer,"VERTREP Delivered - Cargo - Provisions Chill" integer,"VERTREP Delivered - Cargo - Provisions Freeze" integer,"VERTREP Delivered - Cargo - Provisions Dry" integer,"VERTREP Delivered - Cargo - 1Q COG/Ship Store" integer,"VERTREP Delivered - Cargo - Fill" integer,"VERTREP Delivered - Fleet Freight - Provisions Chill" integer,"VERTREP Delivered - Fleet Freight - Provisions Freeze" integer,"VERTREP Delivered - Fleet Freight - Provisions Dry" integer,"VERTREP Delivered - Fleet Freight - 1Q COG/Ship Store" integer,"VERTREP Delivered - Fleet Freight - Mail" integer,"VERTREP Delivered - Fleet Freight - Other Cargo" integer,"VERTREP Delivered - Fleet Freight - DLR/ERM" integer,"VERTREP Delivered - Fleet Freight - Other Retrograde" integer,"Total Pallets Received" bigint,"Total Pallets Delivered" bigint,"EventInfo - Number of CONREP/UNREP Stations Used" integer,"EventInfo - Comments" long varchar ) 
begin
  call "slr"."CLFReport"(@Month,@Year)
end