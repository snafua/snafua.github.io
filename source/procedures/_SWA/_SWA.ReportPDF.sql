create procedure "_SWA"."ReportPDF"( 
  in "ReportId" integer ) 
result( 
  "PDF" char(1) ) 
begin
  declare @PDF char(1);
  set @PDF = '';
  select @PDF
end