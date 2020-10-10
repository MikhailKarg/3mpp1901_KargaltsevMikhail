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