Alter procedure hst_change as
begin
	declare @nazwa varchar(200)
	declare @origin varchar(200)
	declare @date varchar(100)

	declare metadata_hst_change cursor
	for select * from metadata.dbo.hst_change;
	open metadata_hst_change;

	fetch next from metadata_hst_change into @nazwa, @origin, @date
	while @@FETCH_STATUS = 0
		BEGIN 
			EXEC('UPDATE ' + @nazwa +
				'SET timestamp = getDate() ' +
				'WHERE t_id in ' + @origin + ' AND ' + @date)
		END;
	CLOSE metadata_hst_change
	deallocate metadata_hst_change
END;
GO


