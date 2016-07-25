testing
testAddRaisesErrorOnDuplicateKey
	"test that method raises error on duplicate product key"

	| product products |
	product := Product newWithKey: 'A1'.
	products := Products new.
	products add: product.
	self should: [ products add: product ] raise: Error