create procedure --AIM
"_SWA"."RepairDetailsRequirements"( 
  in @RepairStatus char(10),
  in @SubTypeId integer default null,
  in @SourceId integer default null ) 
result( 
  "Vessel" bit,
  "Title" bit,
  "RepairNumber" bit,
  "RepairStatus" bit,
  "Priority" bit,
  "Source" bit,
  "SubType" bit,
  "RepairReference" bit,
  "CASREPID" bit,
  "CRating" bit,
  "Abstract" bit,
  "Notes" bit,
  "QA" bit,
  "StatementOfWork" bit,
  "DateStarted" bit,
  "Department" bit,
  "EstimatedHours" bit,
  "DateCompleted" bit,
  "Billet" bit,
  "ActualHours" bit,
  "CloseOutNotes" bit,
  "ShoresideStatus" bit,
  "Disposition" bit,
  "DateResponded" bit,
  "DateCompletedShoreside" bit,
  "Availability" bit,
  "Contract" bit,
  "WorkItem" bit,
  "Cost" bit,
  "PEComments" bit,
  "FORAC" bit,
  "Status" bit,
  "Equipment" bit,
  "RAC" bit ) 
begin
  /*
2018-08-31 JHM Added Status column to correct an error in the front end
2018-12-18 AIM E-04767 B-20425 Added Equipment
2019-02-11 AIM E-04954 B-20865 Added RAC
*/
  call "SWA"."RepairDetailsRequirements"(@RepairStatus,@SubTypeId,@SourceId)
end