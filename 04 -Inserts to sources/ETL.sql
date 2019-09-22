--ETL
exec stage.dbo.insert_to_stage;
exec temp.dbo.insert_to_temp;
exec temp.dbo.insert_to_stg_dimensions;
exec target.dbo.insert_to_target_dimensions;
exec temp.dbo.insert_to_stg_facts;
exec target.dbo.insert_to_target_facts;