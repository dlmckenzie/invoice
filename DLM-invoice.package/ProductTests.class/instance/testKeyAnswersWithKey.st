testing
testKeyAnswersWithKey
	"key answers with correct key"

	| key |
	key := 'ABC'.
	self assert: [ (Product newWithKey:key) key = key ] description: 'key did not answer correctly' 
	