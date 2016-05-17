testing
testLastIsValidForIdentityAnswersTrueForString
	"answers true if last is non-zero length string"
	
	self assert: [ Customer lastIsValidForIdentity: 'Smith' ]
		description: 'last name should have passed identity validation'
	 
	

