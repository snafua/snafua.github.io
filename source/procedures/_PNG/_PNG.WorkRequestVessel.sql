create procedure "_PNG"."WorkRequestVessel"( 
  in @VesselId integer,
  in @WorkRequestId integer ) 
result( 
  "ShipStatus" char(20),
  "StartDate" date,
  "EstimatedManHours" numeric(6,2),
  "ActualHours" numeric(6,2),
  "RepairCode" char(50),
  "Availability" char(25),
  "Type" char(128),
  "Category" char(128),
  "CASREPID" char(5),
  "CRating" char(2),
  "CloseOutNotes" long varchar,
  "CanEdit" integer,
  "CanDelete" integer ) 
begin
  call "PNG"."WorkRequestVessel"(@VesselId,@WorkRequestId)
end