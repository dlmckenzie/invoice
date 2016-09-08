testing
testValidateFirstNameAnswersTrueForValidFirstName
	"test that validateFirstName answers true for valid first name"
	
	| cmd |
	cmd := AddCustWithFirstLast newWithFirst: 'Joe' Last: 'Smith'.
	cmd validateFirstName.
	self assert: [ cmd validFirstName ] description: 'validFirstName should answer true'
	