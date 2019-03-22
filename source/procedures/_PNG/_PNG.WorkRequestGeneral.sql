create procedure "_PNG"."WorkRequestGeneral"( 
  in @VesselId integer,
  in @WorkRequestId integer ) 
result( 
  "Title" char(128),
  "VesselName" char(128),
  "VesselHullNumber" char(10),
  "Billet" char(30),
  "Department" char(50),
  "Priority" char(1),
  "RiskAssessmentCode" integer,
  "RepairNumber" char(10),
  "WROriginator" char(128),
  "RepairOpenDate" date,
  "Archived" char(1),
  "CanEdit" integer,
  "CanDelete" integer ) 
begin
  call "PNG"."WorkRequestGeneral"(@VesselId,@WorkRequestId)
end