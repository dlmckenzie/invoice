testing
testValidLastNameAnswersTrueForValidLastName
	"test that validateFirstName answers true for valid first name"

	self assert: [ (AddCustWithFirstLast newWithFirst: 'Joe' Last: 'Smith') validLastName ] description: 'validLastName should answer true'