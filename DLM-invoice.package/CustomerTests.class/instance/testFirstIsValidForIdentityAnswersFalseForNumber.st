testing
testFirstIsValidForIdentityAnswersFalseForNumber
	"answers false if first is number"
	
	self deny: [ Customer firstIsValidForIdentity: 1 ]
		description: 'first name should not have passed identity validation'
	 
	

