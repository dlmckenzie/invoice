testing - interface
testPrice_answersFloat
	"test product price answers with Type Float"

	self
		assert: [ (Product new updatePrice: 14.95) price isKindOf: Float ]
		description: 'method did not answer Float'