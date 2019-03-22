create procedure "_SRM"."AttachmentSettings"()
result( 
  "AllowFileTypes" long varchar,"MaxFileSize" integer ) 
begin call "SRM"."AttachmentSettings"()
end