testing
testKeyIsUniqueAnswersFalseForDuplicateKey
	"test that this method answers boolean"

	| products result product |
	products := Products new.
	product := Product newWithKey: 'X101'.
	products addProd: product.
	result := products keyIsUnique: 'X101'.
	self deny: [ result ] description: 'method should have answered true for unique key'