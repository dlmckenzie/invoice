testing
testKeyIsValidForIdentityAnswersFalseForNonString
	"test that method answers new instance of product"

	self deny: [ (Product keyIsValidForIdentity: 9) ] 
		description: 'Method should have answered false for non-string' 
		
