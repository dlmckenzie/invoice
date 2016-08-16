as yet unclassified
detailsIn: constructor


"a text display: [ :one | (customers retrieveByID: one) first , ' ' , (customers retrieveByID: one) last ]. "

	| price |
	constructor text
		when: [ :w :x| x = 'customers' ];
		display: [ :x | (customers retrieveByID: x) first , ' ' , (customers retrieveByID: x) last  ] . 
		
	constructor text
		when: [:w :x | x = 'products'];
		display: [ :x | ('Key: ',(products retrieveByKey: x ) key,
							 String cr,
							 'Description: ', (products retrieveByKey: x) description ,
							 String cr, 
							 'Price: $', (products retrieveByKey: x) price asString ) ]
 
			
