testing
testFirstIsValidForUpdateAnswersTrueForNewName
	"answers true if first is valid for update"
	
	|cust|
	cust := Customer newWithFirst: 'Ann' Last: 'Smith'.
	self assert: [ cust firstIsValidForUpdate: 'Jacob' ]
		description: 'first name should have failed update'
	 
	

