testing - interface
testPriceIsValid_interface
	"test method exists"

	self
		assert: [ (Product newWithKey: 'A') respondsTo: #priceIsValid ]
		description: 'Product priceIsValid method does not exist'.
	self
		assert: [ (Product newWithKey: 'A') priceIsValid isKindOf: Boolean ]
		description: 'Product priceIsValid method does not answer Product'