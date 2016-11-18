testing - interface
testIsValid_interface
	"test method interface"

	self assert: [ Product new respondsTo: #isValid ] description: 'Product isValid does not exist'.
	self 
		assert: [ (Product newWithKey: 'A' )isMemberOf: Product ]
		description: 'Product isValid did not answer with Product'