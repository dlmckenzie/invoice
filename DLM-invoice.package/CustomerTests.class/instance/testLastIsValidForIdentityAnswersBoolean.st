testing
testLastIsValidForIdentityAnswersBoolean
	"test that method answers boolean"
	
	| result |
	result := Customer lastIsValidForIdentity: 'Smith'. 
	self assert: [ result isKindOf: Boolean ] 
		description: 'Method did not answer with Boolean' 
		
