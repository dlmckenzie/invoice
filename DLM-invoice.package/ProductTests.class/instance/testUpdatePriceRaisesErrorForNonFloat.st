testing
testUpdatePriceRaisesErrorForNonFloat
	"test that tupdate fails for non-float price"

	self should: [ Product new updatePrice: 'one' ] raise: Error description: 'non-float price should have raised error'