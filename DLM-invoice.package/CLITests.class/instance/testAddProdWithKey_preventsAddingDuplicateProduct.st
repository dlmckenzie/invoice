testing - product
testAddProdWithKey_preventsAddingDuplicateProduct
	"test edge case - duplicate product (based on product key) cannot be added"

	| app cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cli addProdWithKey: 'A10'.
	cli addProdWithKey: 'A10'.
	self
		assert: [ app products size = 1 ]
		description: 'product with duplicate key should not have been successfully added'.

