testing - interface
testValidateDescription_interface
	"test method interface"

	self
		assert: [ (Product newWithKey: 'A') respondsTo: #validateDescription ]
		description: 'Product validateDesc not found'.
	self
		assert: [ (Product newWithKey: 'A') validateDescription isMemberOf: Product ]
		description: 'Product validateDesc not answering Product'