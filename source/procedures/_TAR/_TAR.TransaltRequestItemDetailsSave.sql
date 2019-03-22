create procedure "_TAR"."TransaltRequestItemDetailsSave"( 
  in @RowId char(1024),
  in @VesselClass char(20),
  in @RequestNumber char(25),
  in @TransaltTitle char(128),
  in @TransaltNumber char(25),
  in @TransaltType char(25),
  in @SWBS char(4),
  in @Priority char(25),
  in @Category char(25),
  in @Status char(25),
  in @SourceItem char(25),
  in @AffectedSystem long varchar,
  in @TransaltDescription long varchar,
  in @RequestDate date,
  in @ApprovalDate date,
  in @ROM numeric(15,2) default null,
  in @IsEncoded bit default null ) 
result( 
  "RowId" char(1024),
  "TransaltId" integer,
  "WorkItemLibraryId" integer,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  if @IsEncoded is null then
    set @IsEncoded = 0
  end if;
  call "TAR"."TransaltRequestItemDetailsSave"(@RowId,@VesselClass,@RequestNumber,@TransaltTitle,@TransaltNumber,@TransaltType,@SWBS,@Priority,
  @Category,@Status,@SourceItem,@AffectedSystem,@TransaltDescription,@RequestDate,@ApprovalDate,@ROM,@IsEncoded)
end