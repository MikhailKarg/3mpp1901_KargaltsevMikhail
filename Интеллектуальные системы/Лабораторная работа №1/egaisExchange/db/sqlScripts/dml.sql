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