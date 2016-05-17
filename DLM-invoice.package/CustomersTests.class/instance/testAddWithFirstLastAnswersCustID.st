testing
testAddWithFirstLastAnswersCustID
	"test that this method answers with ID of cust just added to Customers"
	
	| customers result |
	customers := Customers new.
	result := customers addWithFirst: 'Joe' Last: 'Smith'. 
	self assert: [ result isMemberOf: SmallInteger  ] description: 'result is not ID'

