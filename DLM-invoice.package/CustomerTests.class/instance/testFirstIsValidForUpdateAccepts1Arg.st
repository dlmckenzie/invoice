testing
testFirstIsValidForUpdateAccepts1Arg
	"method should accept one argument (new first name)"

	self
		assert: [ (Customer >> #firstIsValidForUpdate:) argumentNames size = 1 ]
		description: 'method defined with incorrect number of parameters'