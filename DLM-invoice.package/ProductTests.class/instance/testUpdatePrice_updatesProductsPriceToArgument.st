testing - happy path
testUpdatePrice_updatesProductsPriceToArgument
	"test that the product's price is updated to the value of the argument"

	| price product |
	price := 12.50.
	product := Product new.
	product updatePrice: price.
	self assert: [product price = price  ] description: 'price was not correctly updated'