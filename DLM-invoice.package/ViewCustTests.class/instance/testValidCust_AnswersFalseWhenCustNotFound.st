testing
testValidCust_answersFalseWhenCustNotFound
	"test that method answers false for invalid cust id"

	self
		deny: [ (ViewCust newWithID: -3) validCust ]
		description: 'ViewCust validCust should have answered true'