create procedure "_PNG"."WorkItemsPartsOrderMOROrderData"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @OrderId integer,
  in @WorkItemEquipmentId integer default null ) 
result( 
  "Ship" char(80),
  "Originator" char(256),
  "RDD" char(10),
  "OriginatorEmail" char(256),
  "StartDate" char(10),
  "EndDate" char(10),
  "EndItemApp" char(10),
  "Project" char(25),
  "Task" char(128),
  "FundCode" char(128),
  "Manufacturer" char(45),
  "Cage" char(5),
  "SerialNumber" char(15),
  "Model" char(32),
  "RIC" char(11),
  "HSC" char(12),
  "SpecItem" char(15),
  "PTDRequired" bit,
  "CertInspection" bit,
  "EqualUnit" bit,
  "SoleSource" bit,
  "Priority" char(10),
  "NoteToBuyers" long varchar,
  "ShipTo" long varchar ) 
begin
  call "PNG"."WorkItemsPartsOrderMOROrderData"(@VesselId,@WorkItemId,@OrderId,@WorkItemEquipmentId)
end