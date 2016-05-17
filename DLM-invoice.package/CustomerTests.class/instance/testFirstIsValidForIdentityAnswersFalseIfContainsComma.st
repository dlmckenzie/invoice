testing
testFirstIsValidForIdentityAnswersFalseIfContainsComma
	"answers false if first name contains comma"
	

	self deny: [ Customer firstIsValidForIdentity: 'Smith, Andy' ]
		description: 'first name should not have passed identity validation'
	 
	

