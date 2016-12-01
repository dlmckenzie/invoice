testing - product
testAddProdWithKey_addsProduct
	"test happy path - method adds product to products"

	| app cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cli addProdWithKey: 'A10'.
	self assert: [ app products size = 1 ] description: 'product not added'.