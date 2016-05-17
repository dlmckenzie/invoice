testing
testKeyIsValidForIdentityAnswersWithBoolean
	"test that method answers new instance of product"

	self assert: [ (Product keyIsValidForIdentity: 'ABC') isKindOf: Boolean ] 
		description: 'Method did not answer with Boolean' 
		
