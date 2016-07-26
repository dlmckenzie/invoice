testing
testAddRaisesErrorOnDuplicateKey
	"test that method raises error on duplicate product key"

	| product products |
	product := Product newWithKey: 'A1'.
	products := Products new.
	products addProd: product.
	self should: [ products addProd: product ] raise: Error