testing
testKeyIsValidForIdentityAnswersFalseForEmptyString
	"test that method answers new instance of product"

	self deny: [ (Product keyIsValidForIdentity: '') ] 
		description: 'Method should have answered false for empty string' 
		
