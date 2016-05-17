testing
testNewWithKeyAnswersNewProductInitializedWithKey
	"(happy path) test that method answers with a product initialized with the product key"

	| key |
	key := 'PR-01'.
	self assert: [ (Product newWithKey: key) key = key ] description: 'New product was not properly initialized'