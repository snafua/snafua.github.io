create procedure "_PNG"."WorkItemsPartOrderDate"( 
  in @RowId char(1024),
  in @AddOrder bit default 0 ) 
result( 
  "OrderNumber" char(50),
  "OrderStatus" char(15),
  "OrderRowId" char(256),
  "IsSelected" bit ) 
begin
  call "PNG"."WorkItemsPartOrderDate"(@RowId,@AddOrder)
end