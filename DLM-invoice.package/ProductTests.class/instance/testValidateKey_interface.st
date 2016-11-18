testing - interface
testValidateKey_interface
	"test method interface"

	self
		assert: [ (Product newWithKey: 'A') respondsTo: #validateKey ]
		description: 'Product validateKey not found'.
	self
		assert: [ (Product newWithKey: 'A') validateKey isMemberOf: Product ]
		description: 'Product validateDesc not answering Product'