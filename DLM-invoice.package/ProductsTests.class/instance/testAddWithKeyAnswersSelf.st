testing
testAddWithKeyAnswersSelf
	"test that this method answers with ID of cust just added to Customers"

	| products result |
	products := Products new.
	result := products addWithKey: 'X101'.
	self assert: [ result isKindOf: Products ] description: 'method did not answer self'