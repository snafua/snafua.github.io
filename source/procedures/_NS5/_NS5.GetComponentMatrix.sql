create procedure "_NS5"."GetComponentMatrix"( in @ComponentTypeId integer ) 
result( "MatrixId" integer,"MainId" char(18),"IMult1" real,"IHertz1" real,"Primary1" long binary,"OffsetId" char(18),"IMult2" real,"IHertz2" real,"Secondary" long binary,"Axes" char(3),"Cepstrum" integer,"Specific" integer,"Unspecific" integer,"NBWBFlag" integer,"CheckId" integer,"Continuous" integer,"Extract" integer,"Prcnt" integer,"ISum" long binary,"RefId" char(18),"ColName" char(60) ) 
begin
  call "NS5"."GetComponentMatrix"(@ComponentTypeId)
end