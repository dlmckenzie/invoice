testing - interface
testValidate_interface
	"test method interface"

	self
		assert: [ UpdateProdWithPrice new respondsTo: #validate ]
		description: 'UpdateProdWithPrice validate does not exist'.
	self
		assert: [ UpdateProdWithPrice new isMemberOf: UpdateProdWithPrice  ]
		description: 'UpdateProdWithPrice validate does not answer self'