testing
testFirstIsValidForUpdateAnswersFalseForNumber
	"method should answer false for number"

	|cust|
	cust := Customer newWithFirst: 'Ann' Last: 'Smith'.
	self deny: [ cust firstIsValidForUpdate: 9 ]
		description: 'first name should have failed update'


	