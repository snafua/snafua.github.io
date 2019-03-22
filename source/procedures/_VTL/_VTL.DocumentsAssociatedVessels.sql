create procedure "_VTL"."DocumentsAssociatedVessels"( in @NodeId char(1024),in @NodeType char(10) default 'Class',in @RowId char(1024),in @SearchQuery long varchar default null,in @IsSelected bit ) 
result( "NodeId" char(1024),"NodeTitle" char(1024),"HasChildren" bit,"IsSelected" bit ) 
begin
  call "VTL"."DocumentsAssociatedVessels"(@NodeId,@NodeType,@RowId,@SearchQuery,@IsSelected)
end