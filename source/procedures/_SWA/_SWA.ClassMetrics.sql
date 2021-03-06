create procedure "_SWA"."ClassMetrics"( 
  in @VesselClassId integer ) 
result( 
  "FY1" integer,
  "Total1" integer,
  "Approved1" integer,
  "Disapproved1" integer,
  "CancelledDeferred1" integer,
  "InReview1" integer,
  "RoutingForApproval1" integer,
  "FY2" integer,
  "Total2" integer,
  "Approved2" integer,
  "Disapproved2" integer,
  "CancelledDeferred2" integer,
  "InReview2" integer,
  "RoutingForApproval2" integer,
  "FY3" integer,
  "Total3" integer,
  "Approved3" integer,
  "Disapproved3" integer,
  "CancelledDeferred3" integer,
  "InReview3" integer,
  "RoutingForApproval3" integer,
  "FY4" integer,
  "Total4" integer,
  "Approved4" integer,
  "Disapproved4" integer,
  "CancelledDeferred4" integer,
  "InReview4" integer,
  "RoutingForApproval4" integer,
  "FY5" integer,
  "Total5" integer,
  "Approved5" integer,
  "Disapproved5" integer,
  "CancelledDeferred5" integer,
  "InReview5" integer,
  "RoutingForApproval5" integer ) 
begin
  call "SWA"."ClassMetrics"(@VesselClassId)
end