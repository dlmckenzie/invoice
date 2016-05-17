testing
testInitializeWithKeyAnswersSelf
	"test that method answers self"
	
	self assert: [ (Product newWithKey: 'PR01') isKindOf: Product ] 
		description: 'Method did not answer with Product' 

