testing
testFirstIsValidForUpdateAnswersFalseForSameName
	"answers true if first is valid for update"
	
	|customers cust|
	customers := Customers new.
	cust := customers addWithFirst: 'Ann' Last: 'Smith'.
	self deny: [ (customers retrieveByID: cust) firstIsValidForUpdate: 'Ann' ]
		description: 'first name was not changd and should not have passed identity validation'
	 
	

