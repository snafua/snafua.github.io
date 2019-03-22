create procedure /* 2018-03-20 E-03757 JLD Added ModalName*/
"_SWA"."Reports"( 
  in @ReportCategoryId integer ) 
result( 
  "ReportId" integer,
  "ReportTitle" char(50),
  "ReportDescription" char(1024),
  "ReportHasConfiguration" bit,
  "ReportTemplateType" char(10),
  "ReportTemplateFormat" char(10),
  "ModalName" char(128) ) 
begin
  call "SWA"."Reports"(@ReportCategoryId)
end