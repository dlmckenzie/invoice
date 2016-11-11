testing - happy path
testKeyIsValidForIdentity_answersTrueForString
	"test that method answers new instance of product"

	self assert: [ (Product keyIsValidForIdentity: 'ABC') ] 
		description: 'Method should have answered true for string' 
		
