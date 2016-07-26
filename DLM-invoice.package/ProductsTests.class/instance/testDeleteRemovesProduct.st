testing
testDeleteRemovesProduct
	"test that this method removes product"

	| products key product |
	key := 'X101'.
	product := Product newWithKey: key.
	products := Products new.
	products addProd: product.
	self assert: [ products size = 1 ] description: 'error adding product'.
	products delete: product.
	self assert: [ products isEmpty ] description: 'method failed to remove product'