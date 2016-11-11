testing - exceptions
testUpdatePrice_raisesErrorForNegativePrice
	"test that the product's price is updated to the value of the argument"

	self should: [ Product new updatePrice: -12.50 ] raise: Error description: 'negative price should have raised error'