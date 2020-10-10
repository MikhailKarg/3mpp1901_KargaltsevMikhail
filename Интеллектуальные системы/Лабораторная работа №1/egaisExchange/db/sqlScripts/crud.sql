	select 
		ed.url, et.type_description, cl.class_description 
	from exc.egais_data ed 
		join exc.egais_type et
				on et.egais_type  = ed.egais_type 
		join exc.egais_class cl
			on cl.egais_class  = et.egais_class 
	where ed.direction = 1
		and cl.egais_class = 'waybill'
      
	  
select 
	ed.document_number 
	,ed.document_date 
	,edt.status 
	,ec.company_name 
from exc.egais_document ed 
	join exc.egais_data edt
		on edt.data_id  = ed.data_id 
	join exc.egais_company ec
		on ec.fsrar_id  = ed.fsrar_id 
	where ed.fsrar_id = '010000006337'
		
            
  select 
	ed.url 
	,es.status_description 
	,u.utm_description 
from exc.egais_data ed 
	join exc.egais_status es
		on es.status = ed.status
	join exc.utm u
		on u.utm_id  = ed.utm_id 
where u.utm_id = 2

        
        
 update exc.egais_document 
		set fsrar_id = '010000000580'
where document_number  = '1-0011'
    
    
    update exc.egais_data 
		set utm_id = 1
 	from exc.utm 
 		where exc.egais_data.utm_id = exc.utm .utm_id
            and exc.utm .utm_ip = '192.168.6.149/32'	
            
            
    delete from exc.egais_document where fsrar_id <> '010000000580'	
    
    
    DELETE FROM exc.egais_type USING exc.egais_class
  	     WHERE exc.egais_type.egais_class = exc.egais_class.egais_class
            AND exc.egais_type.type_description is null
						