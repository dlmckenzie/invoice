testing
testDeleteRaisesErrorWithInvalidKey
	"test that error is raised with invalid key"

	| products product |
	products := Products new.
	product := Product newWithKey: 'X101'.
	products add: product.
	self should: [ products delete: 'ZZ' ] raise: Error