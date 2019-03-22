create procedure "_PAV"."RemoveMandatoryItem"( 
  in @WorkItemLibraryId integer,
  in @AvailabilityType char(15),
  in @RemovalReason long varchar,
  in @VesselId smallint default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin --ATOMIC
  call "LIT"."RemoveMandatoryItem"(@WorkItemLibraryId,@AvailabilityType,@RemovalReason,@VesselId);
  select 1 as "Success",
    null as "ErrorMessage"
    from "DUMMY"
end