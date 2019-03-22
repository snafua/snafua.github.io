create procedure "_SEAS"."LubeOilSendMessage"( in @VesselId smallint,in @MessageCC long varchar,in @Samples long varchar,in @SampleCount integer,in @AlertCount integer,in @Message long varchar ) 
result( "Success" bit,"ErrorMessage" long varchar ) 
begin
  declare @Result bit;
  declare @Error long varchar;
  set @Result = 1;
  set @Error = 'No Error';
  call "SEAS"."LubeOilSendMessage"(@VesselId,@MessageCC,@Samples,@SampleCount,@AlertCount,@Message);
  select @Result as "Success",
    @Error as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    select 0,"ERRORMSG"() into @Result,@Error
      from "DUMMY";
    select @Result as "Success",
      @Error as "ErrorMessage"
      from "DUMMY"
end