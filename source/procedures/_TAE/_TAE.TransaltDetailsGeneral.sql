create procedure --E-04763 D-04171
--RJM
"_TAE"."TransaltDetailsGeneral"( 
  in @RowId char(1024),
  in @IsEncoded bit default 0 ) 
result( 
  "TransaltId" integer,
  "Title" char(128),
  "TransaltNumber" char(25),
  "RequestDate" timestamp,
  "ApprovalDate" timestamp,
  "RequestNumber" char(25),
  "Status" char(25),
  "VesselsStatus" char(25),
  "Priority" char(25),
  "Category" char(25),
  "CostPerShip" numeric(15,2),
  "FundingSource" char(25),
  "SWBS" char(4),
  "ExpenditureType" char(10),
  "SpecificationId" integer,
  "SpecificationRevision" integer,
  "SpecificationFileName" char(256),
  "EstimateId" integer,
  "EstimateFileName" char(256),
  "Description" long varchar ) 
begin
  /*
2018-11-15 JHM D-04171 Fixes for encoding inconsistencies between 3.1.1, 3.4.2, 3.4.4 and above
*/
  declare @DoNotEncode bit;
  set @DoNotEncode = "SWA"."KeyValuePairParse"(@RowId,'DoNotEncode');
  call "TAE"."TransaltDetailsGeneral"(@RowId,@IsEncoded,@DoNotEncode)
end