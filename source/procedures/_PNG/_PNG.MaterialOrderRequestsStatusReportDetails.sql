create procedure "_PNG"."MaterialOrderRequestsStatusReportDetails"( 
  in @VesselId integer,
  in @AvailabilityId integer,
  in @ContractId integer ) 
result( 
  "RowType" char(10),
  "WorkItemNumber" char(25),
  "PurchaseOrderItem" integer,
  "ItemName" char(200),
  "Manufacturer" char(40),
  "PartNumber" char(50),
  "NavyStockNumber" char(15),
  "UnitOfIssue" char(5),
  "QuantityOrdered" integer,
  "QuantityRequired" integer,
  "PurchaseOrderDate" char(10),
  "RequisitionNumber" char(20),
  "EstimatedCost" numeric(15,2),
  "RequiredDeliveryDate" char(10),
  "EstimatedDeliveryDate" char(10),
  "VendorName" char(50),
  "VendorAddress" char(250),
  "VendorContactName" char(50),
  "PurchaseOrderStatus" char(25),
  "VendorPhoneNumber" char(25),
  "PurchaseOrderRemarks" char(250) ) 
begin
  call "PNG"."MaterialOrderRequestsStatusReportDetails"(@VesselId,@AvailabilityId,@ContractId)
end