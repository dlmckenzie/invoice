testing
testInitializeAnswersSelf
	"method should answer self"
	
	| result |
	result := Customer initialize.
	self assert: [ result isKindOf: Customer class ] description: 'intialize does not answer with Customer' 	

