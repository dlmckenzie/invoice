testing
testFirstIsValidForIdentityMethodAnswersBoolean
	"test that method answers boolean"
	
	| result |
	result := Customer firstIsValidForIdentity: 'Joe'. 
	self assert: [ result isKindOf: Boolean ] 
		description: 'Method did not answer with Boolean' 
		
