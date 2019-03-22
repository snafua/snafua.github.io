create procedure "_PEM"."WorkItemLineItemModifications"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @LineItemNumber integer ) 
result( 
  "WorkItemModId" integer,
  "WorkItemModNumber" char(10),
  "WorkItemModTitle" char(128),
  "WorkItemModClassification" char(25),
  "WorkItemModStatus" char(25),
  "WorkItemModType" char(5),
  "WorkItemModProgress" integer,
  "NegotiatedTotalDollars" numeric(15,2) ) 
begin
  call "PEM"."WorkItemLineItemModifications"(@VesselId,@WorkItemId,@LineItemNumber)
end