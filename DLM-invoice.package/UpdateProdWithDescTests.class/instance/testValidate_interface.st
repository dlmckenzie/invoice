testing - interface
testValidate_interface
	"test method interface"

	self
		assert: [ UpdateProdWithDesc new respondsTo: #validate ]
		description: 'UpdateProdWithDesc validate does not exist'.
	self
		assert: [ UpdateProdWithDesc new isMemberOf: UpdateProdWithDesc  ]
		description: 'UpdateProdWithDesc validate does not answer self'