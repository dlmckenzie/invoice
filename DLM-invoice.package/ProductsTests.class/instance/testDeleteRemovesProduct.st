testing
testDeleteRemovesProduct
	"test that this method removes product"

	| products key |
	key := 'X101'.
	products := Products new addWithKey: key.
	self assert: [ (products delete: key) isEmpty ] description: 'method failed to remove product'