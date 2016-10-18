testing - edge cases
testFirstIsValidForUpdateAnswersFalseIfContainsComma
	"method should answer false for name that contains comma"

	|cust|
	cust := Customer newWithFirst: 'Ann' Last: 'Smith'.
	self deny: [ cust firstIsValidForUpdate: 'x,' ]
		description: 'first name should have failed update'