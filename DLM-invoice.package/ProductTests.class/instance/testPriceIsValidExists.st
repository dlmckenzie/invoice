testing
testPriceIsValidExists
	"test method exists"

	self assert: [ Product new respondsTo: #priceIsValid: ] description: 'method does not exist'