testing - product
testAddProdWithKey_preventsAddingEmptyProduct
	"test edge case - product with empty string cannot be added"

	| app cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cli addProdWithKey: String empty.
	self
		assert: [ app products isEmpty ]
		description: 'product with empty key should not have been added'.
