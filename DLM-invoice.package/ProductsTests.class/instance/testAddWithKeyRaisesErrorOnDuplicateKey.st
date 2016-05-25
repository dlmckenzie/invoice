testing
testAddWithKeyRaisesErrorOnDuplicateKey
	"test that method raises error on duplicate product key"

	| product products |
	product := 'AA'.
	products := Products new.
	products addWithKey: product.
	self should: [ products addWithKey: product ] raise: Error