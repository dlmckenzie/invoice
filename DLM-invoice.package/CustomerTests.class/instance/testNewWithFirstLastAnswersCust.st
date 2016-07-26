testing
testNewWithFirstLastAnswersCust
	"test that this method answers with ID of cust just added to Customers"

	| result |
	result := Customer newWithFirst: 'Joe' Last: 'Smith'.
	self assert: [ result isMemberOf: Customer ] description: 'result is not a Customer'