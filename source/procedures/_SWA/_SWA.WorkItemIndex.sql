create procedure "_SWA"."WorkItemIndex"( 
  in @Vesselid integer,
  in @ContractId integer ) 
result( 
  "Section" char(4),
  "SectionTitle" char(128),
  "ItemNumber" char(25),
  "Title" char(128),
  "Category" char(5),
  "Vessel" char(80),
  "Contract" char(25),
  "HullNumber" char(50),
  "Availability" char(128) ) 
begin
  call "SWA"."WorkItemIndex"(@VesselId,@ContractId)
end