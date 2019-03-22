create procedure --JLD
"_SWA"."SupportedFileTypes"()
result( 
  "Type" char(25),
  "Extension" char(25),
  "ContentType" char(128) ) 
begin
  /*
2019-02-11 JLD E-04892 B-20892 Changed RTF contentType to application/rtf
*/
  select 'Specification' as "Type",
    'doc' as "Extension",
    'application/msword' as "ContentType" union all
  select 'Specification' as "Type",
    'docx' as "Extension",
    'application/vnd.openxmlformats-officedocument.wordprocessingml.document' as "ContentType" union all
  select 'Attachment' as "Type",
    'pdf' as "Extension",
    'application/pdf' as "ContentType" union all
  select 'Estimate' as "Type",
    'xls' as "Extension",
    'application/vnd.ms-excel' as "ContentType" union all
  select 'Estimate' as "Type",
    'xlsx' as "Extension",
    'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' as "ContentType" union all
  select 'Attachment' as "Type",
    'txt' as "Extension",
    'text/plain' as "ContentType" union all
  select 'ImportSpecification' as "Type",
    'zip' as "Extension",
    'application/zip' as "ContentType" union all
  select 'Attachment' as "Type",
    'mpp' as "Extension",
    'application/vnd.ms-project' as "ContentType" union all
  select 'Attachment' as "Type",
    'mppx' as "Extension",
    'application/vnd.ms-project' as "ContentType" union all
  select 'Attachment' as "Type",
    'ppt' as "Extension",
    'application/vnd.ms-powerpoint' as "ContentType" union all
  select 'Attachment' as "Type",
    'pptx' as "Extension",
    'application/vnd.openxmlformats-officedocument.presentationml.presentation' as "ContentType" union all
  select 'Attachment' as "Type",
    'xlt' as "Extension",
    'application/excel' as "ContentType" union all
  select 'Attachment' as "Type",
    'xltx' as "Extension",
    'application/vnd.openxmlformats-officedocument.spreadsheetml.template' as "ContentType" union all
  select 'Attachment' as "Type",
    'csv' as "Extension",
    'text/plain' as "ContentType" union all
  select 'Attachment' as "Type",
    'gif' as "Extension",
    'image/gif' as "ContentType" union all
  select 'Attachment' as "Type",
    'jpg' as "Extension",
    'image/jpeg' as "ContentType" union all
  select 'Attachment' as "Type",
    'msg' as "Extension",
    'application/vnd.ms-outlook' as "ContentType" union all
  select 'Attachment' as "Type",
    'rtf' as "Extension",
    'application/rtf' as "ContentType" union all
  select 'Attachment' as "Type",
    'dwg' as "Extension",
    'image/vnd.dwg' as "ContentType"
    order by "Extension" asc
end