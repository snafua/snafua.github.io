create procedure "_SWA"."WorkRequestReport"( 
  in @RowId char(1024) ) 
result( 
  "Abstract" long varchar,
  "BilletDisplay" char(240),
  "WLIDateComplete" date,
  "CloseOutNotes" long varchar,
  "WRDate" date,
  "Department" char(50),
  "Equipment" long varchar,
  "Note" long varchar,
  "Originator" char(256),
  "PartsInformation" long varchar,
  "PEComments" long varchar,
  "WRTypeDescription" char(50),
  "WRExternalId" char(10),
  "StatementOfWork" long varchar,
  "WLIStatus" char(10),
  "WLISubject" char(50) ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "SWA"."WorkRequestReport"(@VesselId,@WorkRequestId)
end