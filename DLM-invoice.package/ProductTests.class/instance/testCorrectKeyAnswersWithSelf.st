testing
testCorrectKeyAnswersWithSelf
	"test that method answers new instance of product"
	
	| result |
	result := (Product new) correctKey: 'PR01'. 
	self assert: [ result isKindOf: Product ] 
		description: 'Method did not answer with Product' 
		
