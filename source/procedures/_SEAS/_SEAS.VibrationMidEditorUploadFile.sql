create procedure "_SEAS"."VibrationMidEditorUploadFile"( in @Filename char(255),in @ImageType char(10),in @FileData long varchar ) 
result( "ImageId" integer ) 
/* 21). //I will pass you the information for the file the user wants to upload, and you will save it to the database and give me the id you assign to it.
Service: SEAS_VibrationMidEditorUploadFile
Incoming variables: ContentType (image/bmp), FileName, FileData, FileSize
Outgoing variables: ImageId
Note: Let me know if this is enough to get the picture */
begin
  call "SEAS"."VibrationMidEditorUploadFile"(@Filename,@ImageType,@FileData)
end