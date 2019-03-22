create procedure "_VTL"."PhysicalStorageInsert"( in @LocationDescription char(255) ) 
result( 
  "DocumentLocationId" integer,
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."PhysicalStorageInsert"(@LocationDescription)
end