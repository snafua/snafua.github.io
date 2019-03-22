create procedure "_PEM"."WorkItemModificationInsertUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer default null,
  in @WorkItemModNumber char(10),
  in @WorkItemModTitle char(128),
  in @WorkItemModClassificationCode char(5),
  in @WorkItemModStatus char(25),
  in @WorkItemModIssuedDate date default null,
  in @WorkItemModResponseDate date default null,
  in @WorkItemModSettledDate date default null,
  in @WorkItemModSpecification long varchar default null,
  in @WorkItemModPreNegotiation long varchar default null,
  in @WorkItemModPostNegotiation long varchar default null,
  in @PortEngineerId integer default null ) 
result( 
  "VesselId" integer,
  "WorkItemId" integer,
  "WorkItemModId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemModificationInsertUpdate"(@VesselId,@WorkItemId,@WorkItemModId,@WorkItemModNumber,@WorkItemModTitle,@WorkItemModClassificationCode,@WorkItemModStatus,
  @WorkItemModIssuedDate,@WorkItemModResponseDate,@WorkItemModSettledDate,@WorkItemModSpecification,@WorkItemModPreNegotiation,@WorkItemModPostNegotiation,@PortEngineerId)
end