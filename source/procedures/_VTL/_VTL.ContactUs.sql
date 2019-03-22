create procedure "_VTL"."ContactUs"( 
  in @ContactUsId integer ) 
result( "ContactUsId" integer,"Title" long varchar,"Phone" char(20),
  "Email" varchar(500),"Address1" varchar(500),"Address2" varchar(500),"City" varchar(128),"State" char(2),"Zip" varchar(20),"Hours" varchar(20),"Website" varchar(500) ) 
begin
  call "VTL"."ContactUs"(@ContactUsId)
end