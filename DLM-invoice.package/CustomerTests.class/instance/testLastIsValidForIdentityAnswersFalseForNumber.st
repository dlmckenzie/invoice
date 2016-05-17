testing
testLastIsValidForIdentityAnswersFalseForNumber
	"answers false if first is number"
	

	self deny: [ Customer lastIsValidForIdentity: 1 ]
		description: 'last name should not have passed identity validation'
	 
	

