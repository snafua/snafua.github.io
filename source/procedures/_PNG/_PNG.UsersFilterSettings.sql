create procedure "_PNG"."UsersFilterSettings"( 
  in @VesselAccessList long varchar,
  in @DateList long varchar,
  in @PriorityList long varchar,
  in @RACList long varchar,
  in @ShipStatusList long varchar,
  in @ShoreStatusList long varchar,
  in @DispositionList long varchar,
  in @FORACList long varchar,
  in @Description char(128) default null,
  in @AllText long varchar default null ) 
result( 
  "RefreshNavigation" bit ) 
begin
  declare @RefreshNavigation bit;
  declare @CurrentCount integer;
  declare @PreviousCount integer;
  set @RefreshNavigation = 0;
  select "COUNT"()
    into @PreviousCount from "SWA"."FilteredVessels"("PNG"."ApplicationId"());
  select "COUNT"()
    into @CurrentCount from "ECO"."STR_Split"(@VesselAccessList);
  if(@PreviousCount <> @CurrentCount) or(@PreviousCount = 1 and @VesselAccessList = '*') then
    set @RefreshNavigation = 1
  else
    select first 1
      into @RefreshNavigation from "SWA"."FilteredVessels"("PNG"."ApplicationId"()) as "PV"
        left outer join(select "String" as "VesselId"
          from "ECO"."STR_Split"(@VesselAccessList)) as "CV"
        on "PV"."VesselId" = "CV"."VesselId"
      where "CV"."VesselId" is null
  end if;
  call "PNG"."UsersFilterSettings"(@VesselAccessList,@DateList,@PriorityList,@RACList,@ShipStatusList,@ShoreStatusList,@DispositionList,@FORACList,@Description,@AllText);
  commit work;
  select @RefreshNavigation as "RefreshNavigation"
    from "DUMMY"
end