testing
testValidFirstNameAnswersTrueForValidFirstName
	"test that validateFirstName answers true for valid first name"

	self assert: [ (AddCustWithFirstLast newWithFirst: 'Joe' Last: 'Smith') validFirstName ] description: 'validFirstName should answer true'