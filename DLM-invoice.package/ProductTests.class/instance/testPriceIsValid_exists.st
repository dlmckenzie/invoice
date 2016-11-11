testing - interface
testPriceIsValid_exists
	"test method exists"

	self
		assert: [ Product respondsTo: #priceIsValid: ] description: 'method does not exist';
		deny: [ Product new respondsTo: #priceIsValid: ]
			description: 'method should only exist as class method'