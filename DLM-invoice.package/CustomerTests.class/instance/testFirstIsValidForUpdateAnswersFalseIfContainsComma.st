testing
testFirstIsValidForUpdateAnswersFalseIfContainsComma
	"method should answer false for name that contains comma"

	|customers cust|
	customers := Customers new.
	cust := customers addWithFirst: 'Ann' Last: 'Smith'.
	self deny: [ (customers retrieveByID: cust) firstIsValidForUpdate: 'x,' ]
		description: 'first name should have failed update'