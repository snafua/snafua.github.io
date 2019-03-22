create procedure "_VTL"."RequestDrawingNumberDetailGrid"( 
  in @RequestDrawingNumberId integer default null ) 
result( 
  "GroupNumber" char(3),
  "GroupDescription" varchar(100),
  "RequestDrawingNumberId" integer,
  "TALTAssociated" varchar(200),
  "SRDDrawing" bit,
  "AsBuilt" bit,
  "Functional" bit,
  "NDDrawing" bit,
  "DrawingNumber" char(20),
  "RequestDrawingNumberDetailId" integer,
  "RequestDrawingNumberDetailTitle" varchar(100),
  "Change" char(10),
  "Revision" char(10),
  "DocumentId" integer,
  "NumberStatus" varchar(25),
  "Vessels" long varchar ) 
begin
  call "VTL"."RequestDrawingNumberDetailGrid"(@RequestDrawingNumberId)
end