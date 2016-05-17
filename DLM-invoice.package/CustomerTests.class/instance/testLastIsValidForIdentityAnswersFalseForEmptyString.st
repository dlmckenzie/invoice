testing
testLastIsValidForIdentityAnswersFalseForEmptyString
	"answers false if last is empty string"
	
	self deny: [ Customer lastIsValidForIdentity: nil ]
		description: 'last name should not have passed identity validation'
	 
	
