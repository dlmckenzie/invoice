testing
testUpdateDescriptionAnswersSelf
	"test that method answers self"

	self assert: [ ((Product new) updateDescription: 'ABC') isKindOf: Product ] 
		description: 'Method did not answer with Product' 
		
