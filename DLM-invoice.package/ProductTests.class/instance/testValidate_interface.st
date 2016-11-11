testing - interface
testValidate_interface
	"test method interface"

	self
		assert: [ (Product newWithKey: 'A') respondsTo: #validate ]
		description: 'Product validate method does not exist'.
	self
		assert: [ ((Product newWithKey: 'A' )validate) isMemberOf: Product ]
		description: 'Product validate shoudl have answered with self'