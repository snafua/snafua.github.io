create procedure "_VTL"."RequestTechManualNumberEmailGrid"()
result( 
  "RequestedById" integer,
  "RequestedByFullName" varchar(256),
  "RequestedByEmail" varchar(256),
  "EmailSentOn" date,
  "EmailBody" varchar(10),
  "Sender" varchar(50) ) 
begin
  call "VTL"."RequestTechManualNumberEmailGrid"()
end