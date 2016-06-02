interface - help
help: aString
	"provides detailed help info for each command"

	aString = 'addCustWithFirst:Last:'
		ifTrue: [ Transcript
				show: 'addCustWithFirst: {first name} Last: {last name}';
				cr;
				show: '  Adds a customer.';
				cr ].
	aString = 'viewCust:'
		ifTrue: [ Transcript
				show: 'viewCust: {customer id}';
				cr;
				show: '  View a customer.';
				cr ].
	aString = 'viewAllCustomers'
		ifTrue: [ Transcript
				show: 'viewAllCustomers';
				cr;
				show: '  View list of all customers.';
				cr ].
	aString = 'searchCustByLast:'
		ifTrue: [ Transcript
				show: 'searchCustByLast: {all or part of the last name you are intersted in}';
				cr;
				show: '  View list of all customers that contain the provided name.';
				cr ].
	aString = 'updateCust:WithFirst:'
		ifTrue: [ Transcript
				show: 'updateCust: {customer id} First: {new first name}';
				cr;
				show: '  Updates a customer''s first name.';
				cr ].
	aString = 'updateCust:WithLast:'
		ifTrue: [ Transcript
				show: 'updateCust: {customer id} First: {new last name}';
				cr;
				show: '  Updates a customer''s last name.';
				cr ].
	aString = 'deleteCust:'
		ifTrue: [ Transcript
				show: 'deleteCust: {customer id}';
				cr;
				show: '  Deletes a customer.';
				cr ].
	aString = 'addProdWithKey:'
		ifTrue: [ Transcript
				show: 'addProdWithKey: {product key}';
				cr;
				show: '  Adds new product with provided product key.';
				cr ].
	aString = 'addProdWithKey:Desc:Price'
		ifTrue: [ Transcript
				show: 'addProdWithKey: {product key} Desc: {product description} Price: {product price}';
				cr;
				show: '  Adds new product with provided product key, the description, and the price.';
				cr ].
	aString = 'viewProd:'
		ifTrue: [ Transcript
				show: 'viewProd: {product key}';
				cr;
				show: '  View product for key';
				cr ].
	aString = 'viewAllProducts'
		ifTrue: [ Transcript
				show: 'viewAllProducts';
				cr;
				show: '  View all products in system';
				cr ].
	aString = 'searchProdByDesc:'
		ifTrue: [ Transcript
				show: 'searchProdByDesc: {any or all of the product''s description';
				cr;
				show: '  View all products containing provided description';
				cr ].
	aString = 'updateProd:WithDesc:'
		ifTrue: [ Transcript
				show: 'updateProd: {product key} WithDesc: {new product description}';
				cr;
				show: '  Update product''s description';
				cr ].
	aString = 'updateProd:WithPrice:'
		ifTrue: [ Transcript
				show: 'updateProd: {product key} WithPrice: {new product price}';
				cr;
				show: '  Update product''s price';
				cr ].
	aString = 'deleteProd:'
		ifTrue: [ Transcript
				show: 'deleteProd: {product key}';
				cr;
				show: '  Delete product corresponding to key';
				cr ]