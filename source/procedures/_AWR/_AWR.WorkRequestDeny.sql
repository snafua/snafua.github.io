create procedure --JLD
"_AWR"."WorkRequestDeny"( 
  in @RowId char(1024),
  in @WorkRequestDenialReasonId integer,
  in @WorkRequestDenialComments long varchar default null ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2017-02-02 RJM
4/25/2018 JLD E-02863 B-17679
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  declare @WorkRequestReviewStatus char(10);
  declare @ErrorMessage long varchar;
  set @WorkRequestReviewStatus = 'Denied';
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  --Insert/update SAMM.WorkRequestsReview for status
  call "AWR"."WorkRequestsReviewInsertUpdate"(@VesselId,@WorkRequestId,@WorkRequestReviewStatus);
  --Insert/Update SAMM.WorkListItemsAdditionalNarratives with reasom
  --CALL SAMM.WorkListItemsAdditionalNarrativesInsertUpdate( @VesselId, @WorkRequestId, 'NTRNRS', @Reason);
  --Insert/Update WorkRequestsDenials
  call "SAMM"."WorkRequestsDenialsInsertUpdate"(@VesselId,@WorkRequestId,@WorkRequestDenialReasonId,@WorkRequestDenialComments);
  select @RowId as "RowId",
    1 as "Success",
    null as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select @RowId as "RowId",
      0 as "Success",
      @ErrorMessage as "ErrorMessage"
      from "DUMMY"
end