testing - interface
testNewWithKey_answersProduct
	"test that method answers new instance of product"

	self
		assert: [ (Product newWithKey: 'PR01') isMemberOf: Product ]
		description: 'Method did not answer with Product'