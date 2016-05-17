testing
testFirstIsValidForUpdateAnswersBoolean
	"method should accept one argument (new first name)"

	| result |
	result := (Customer new) firstIsValidForUpdate: 'Joe'. 
	self assert: [ result isKindOf: Boolean ] 
		description: 'Method did not answer with Boolean' 