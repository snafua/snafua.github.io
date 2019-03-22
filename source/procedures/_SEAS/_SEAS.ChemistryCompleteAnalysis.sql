create procedure "_SEAS"."ChemistryCompleteAnalysis"( 
  in @VesselId smallint,
  in @Month char(10),
  in @CC long varchar,
  in @BCC long varchar,
  in @Subject long varchar,
  in @Message long varchar ) 
result( "Success" bit,"ErrorMessage" long varchar ) 
begin
  declare @Result bit;
  declare @Error long varchar;
  set @Result = 0;
  set @Error = "SEAS"."ChemistryCompleteAnalysis"(@VesselId,@Month,@CC,@BCC,@Subject,@Message);
  if(@Error = 'No Error') then
    set @Result = 1
  else
    set @Result = 0
  end if;
  select @Result as "Success",
    @Error as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    select 0,
      "ERRORMSG"()
      into @Result,@Error
      from "DUMMY";
    select @Result as "Success",
      @Error as "ErrorMessage"
      from "DUMMY"
end