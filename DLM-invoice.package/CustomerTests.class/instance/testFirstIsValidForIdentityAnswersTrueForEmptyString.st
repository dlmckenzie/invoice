testing
testFirstIsValidForIdentityAnswersTrueForEmptyString
	"answers true if first is non-zero length string"
	
	self assert: [ Customer firstIsValidForIdentity: '' ]
		description: 'empty first name should have passed identity validation'
	 
	

