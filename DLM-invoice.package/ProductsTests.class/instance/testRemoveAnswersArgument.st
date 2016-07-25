testing
testRemoveAnswersArgument
	"test that this method answers self"

	| product products |
	product := Product newWithKey: 'X101'.
	products := Products new.
	products add: product.
	self
		assert: [ (products delete: product) isKindOf: Product ]
		description: 'method did not answer argument'