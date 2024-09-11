--liquibase formatted sql
--changeset lbpoc:countries_table runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for countries_table
  create table poc.countries 
   (	COUNTRY_ID text not null,
	COUNTRY_NAME text,
	REGION_ID int,
	CONSTRAINT COUNTRY_C_ID_PK PRIMARY KEY (COUNTRY_ID)
   );
