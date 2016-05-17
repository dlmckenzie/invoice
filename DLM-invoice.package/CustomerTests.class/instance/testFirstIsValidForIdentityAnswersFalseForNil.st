testing
testFirstIsValidForIdentityAnswersFalseForNil
	"answers false if first is nil"
	
	self deny: [ Customer firstIsValidForIdentity: nil ]
		description: 'first name should not have passed identity validation'
	 
	

