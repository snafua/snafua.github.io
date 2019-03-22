create procedure --JLD
"_AWR"."WorkRequestsDenialReasons"()
result( 
  "WorkRequestDenialReasonId" integer,
  "WorkRequestDenialReason" char(128) ) 
begin
  /*
4/25/2018 JLD E-02863 B-17679
*/
  select "WorkRequestDenialReasonId" as "WorkRequestDenialReasonId",
    "WorkRequestDenialReason" as "WorkRequestDenialReason"
    from "SAMM"."ViewWorkRequestsDenialReasonsBase"
    where "RecordActive" = 1
    order by "RecordSequence" asc
end