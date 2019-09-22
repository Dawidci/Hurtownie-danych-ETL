create table metadata.dbo.advertisement (
	id_table numeric(28),
	name varchar(30),
	no_column numeric(28)
)

create table metadata.dbo.development (
	id_table numeric(28),
	name varchar(30),
	no_column numeric(28)
)

create table metadata.dbo.stage (
	id_table numeric(28),
	name varchar(30),
	both_sources bit
)

create table metadata.dbo.temp (
	bugs_description varchar(300)
)


create table metadata.dbo.target (
	key_generator varchar(300)
)