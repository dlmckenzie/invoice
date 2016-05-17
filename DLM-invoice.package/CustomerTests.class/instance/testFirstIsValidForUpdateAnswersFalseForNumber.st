testing
testFirstIsValidForUpdateAnswersFalseForNumber
	"method should answer false for number"

	|customers cust|
	customers := Customers new.
	cust := customers addWithFirst: 'Ann' Last: 'Smith'.
	self deny: [ (customers retrieveByID: cust) firstIsValidForUpdate: 9 ]
		description: 'first name should have failed update'