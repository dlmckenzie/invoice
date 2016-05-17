testing
testFirstIsValidForIdentityAnswersTrueForString
	"answers true if first is non-zero length string"
	
	self assert: [ Customer firstIsValidForIdentity: 'Joe' ]
		description: 'first name should have passed identity validation'
	 
	

