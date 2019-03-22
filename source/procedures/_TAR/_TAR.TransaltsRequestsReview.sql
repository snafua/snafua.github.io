create procedure "_TAR"."TransaltsRequestsReview"( in @RowId char(1024) ) 
result( "RowId" char(1024),
  "TransaltId" integer,
  "Reviewer" integer,
  "ReviewerName" char(256),
  "ReviewRequestDate" date,
  "TransaltProgressId" integer,
  "ReviewDate" date,
  "ReviewStatus" char(25),
  "ReviewComment" long varchar ) 
begin
  call "TAR"."TransaltsRequestsReview"(@ROWId)
end