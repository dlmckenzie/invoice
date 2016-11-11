testing - exceptions
testUpdatePrice_raisesErrorForNilPrice
	"test that tupdate fails for nil price"

	self should: [ Product new updatePrice: nil ] raise: Error description: 'nil price should have raised error'