interface - help
help: aString
	"provides detailed help info for each command"

	| cmdString validCommands |
	validCommands := #('addCustWithFirst:Last:' 'viewCust:' 'viewAllCustomers' 'searchCustByLast:' 'updateCust:WithFirst:' 'updateCust:WithLast:' 'deleteCust:').
	(validCommands includes: aString)
		ifTrue: [ cmdString := aString capitalized copyWithoutAll: ':'.
			cmdString := cmdString , ' showHelpFull'.
			Compiler evaluate: cmdString ].
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