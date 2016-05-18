testing
testGenerateNextIDAnswersInteger
	"method should answer integer"
	

	self assert: [ Customer generateNextID isKindOf: Integer ] description: 'generateNextID does not answer with integer' 	

