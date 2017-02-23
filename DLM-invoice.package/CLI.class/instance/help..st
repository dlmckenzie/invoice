interface - help
help: aString
	"provides detailed help info for each command"

	| cmdString validCommands |
	validCommands := #('addCustWithFirst:Last:' 'viewCust:' 'viewAllCustomers' 'searchCustByLast:' 'updateCust:WithFirst:' 'updateCust:WithLast:' 'deleteCust:' 'addProdWithKey:' 'addProdWithKey:Desc:Price:' 'deleteProd:' 'updateProd:WithDesc:' 'updateProd:WithPrice:' 'searchProdByDesc:' 'viewAllProducts').
	(validCommands includes: aString)
		ifTrue: [ cmdString := aString capitalized copyWithoutAll: ':'.
			cmdString := cmdString , ' showHelpFull'.
			Compiler evaluate: cmdString ].
	aString = 'viewProd:'
		ifTrue: [ Transcript
				show: 'viewProd: {product key}';
				cr;
				show: '  View product for key';
				cr ]
	