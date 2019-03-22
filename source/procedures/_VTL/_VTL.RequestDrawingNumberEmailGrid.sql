create procedure "_VTL"."RequestDrawingNumberEmailGrid"()
result( 
  "RequestedById" integer,
  "RequestedByFullName" varchar(256),
  "RequestedByEmail" varchar(256),
  "EmailSentOn" date,
  "EmailBody" varchar(10),
  "Sender" varchar(50) ) 
begin
  call "VTL"."RequestDrawingNumberEmailGrid"()
end