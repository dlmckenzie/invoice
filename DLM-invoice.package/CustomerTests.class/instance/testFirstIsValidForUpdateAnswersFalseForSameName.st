testing - edge cases
testFirstIsValidForUpdateAnswersFalseForSameName
	"answers true if first is valid for update"
	
	|cust|
	cust := Customer newWithFirst: 'Ann' Last: 'Smith'.
	self deny: [ cust firstIsValidForUpdate: 'Ann' ]
		description: 'first name was not changed and so should not have passed validation'
	 
	

