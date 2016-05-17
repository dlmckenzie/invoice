testing
testFirstIsValidForUpdateAnswersTrueForNewName
	"answers true if first is valid for update"
	
	|customers cust|
	customers := Customers new.
	cust := customers addWithFirst: 'Ann' Last: 'Smith'.
	self assert: [ (customers retrieveByID: cust) firstIsValidForUpdate: 'Jacob' ]
		description: 'first name should have passed identity validation'
	 
	

