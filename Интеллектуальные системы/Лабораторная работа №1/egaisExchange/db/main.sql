CREATE DATABASE egaisexchange;

\connect egaisexchange


CREATE SCHEMA  exc;


create table exc.egais_company(
					fsrar_id varchar(64) primary key
					,company_name varchar(512)
					,company_address varchar(1024)
					,is_active bool default false);
					
create table exc.egais_class(
					egais_class varchar(255) primary key
					,class_description varchar(256));
					
create table exc.egais_status(
					status varchar(256) primary key
					,status_description varchar(256));
					
create table exc.utm(
					utm_id serial primary key
					,utm_description varchar(256)
					,utm_ip cidr 
					,is_active bool default false);
				
create table exc.egais_type(
				    egais_type varchar(256) primary key
					,egais_class varchar(255) REFERENCES exc.egais_class (egais_class) NOT NULL
					,type_description varchar(256));
				
create table exc.egais_data(
					data_id serial primary key
					,egais_type varchar(256) REFERENCES exc.egais_type (egais_type) NOT NULL
					,xml_content xml
					,status varchar(256) REFERENCES exc.egais_status (status) NOT NULL
					,direction int NOT NULL			
					,url varchar(256) NOT NULL
					,utm_id int REFERENCES exc.UTM (utm_id) NOT NULL);
					
create table exc.egais_document(
					document_number varchar(64) 
					,data_id int REFERENCES exc.egais_data (data_id ) NOT NULL
					,fsrar_id varchar(64) REFERENCES  exc.egais_company(fsrar_id ) NOT NULL
					,document_date timestamp
					,primary key(document_number, document_date));
					

insert into exc.egais_company (
						company_name 
						,company_address 
						,fsrar_id 
						,is_active )
		values
		('tander', 'moscow', '010000000580', true)
		,('f5retail', 'moscow', '010000006337', false);
		
insert into exc.egais_class(
					egais_class
					,class_description )
	values
		('waybill', 'despatch')
		,('actwriteoff', 'return');
		
insert into exc.egais_status (
					status
					,status_description )
	values
		('new', 'new')
		,('sent', 'sent');

insert into exc.utm(
				utm_ip 
				,utm_description)
	values
		('192.168.6.149','retail')
		,('192.168.6.154','wholesale');

insert into exc.egais_type (
					egais_type
					,egais_class
					,type_description )
	values
		('waybill_v3', 'waybill', 'despatch_v3')
		,('actwriteoff_v3', 'actwriteoff','return_v3');

insert into exc.egais_data(
				egais_type
				,xml_content 
				,status
				,direction 
				,url
				,utm_id )
	values
		('waybill_v3', '<?xml version="1.0" encoding="UTF-8"?>', 'new', 1, '/opt/in/1235', 1)
		,('actwriteoff_v3', '<?xml version="1.0" encoding="UTF-8"?>', 'sent',-1, '/opt/out/12424', 2);
		
insert into exc.egais_document (
								document_number 
								,document_date 
								,data_id 
								,fsrar_id)
	values
		('1-0001' ,current_timestamp ,1 ,'010000000580')
		,('1-0011' ,current_timestamp ,2 ,'010000006337')
		



					



					
					

					
					

					
					

					
					

					


					
					

					
                    
            



				

					
					

					
					
					

