testing
testLastIsValidForIdentityAnswersFalseForNil
	"answers true if last is non-zero length string"
	
	self deny: [ Customer lastIsValidForIdentity: nil ]
		description: 'last name should not have passed identity validation'
	 
	
