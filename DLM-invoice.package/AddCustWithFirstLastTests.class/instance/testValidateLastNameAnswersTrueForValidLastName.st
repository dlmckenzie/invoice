testing
testValidateLastNameAnswersTrueForValidLastName
	"test that validateFirstName answers true for valid first name"
	
	| cmd |
	cmd := AddCustWithFirstLast newWithFirst: 'Joe' Last: 'Smith'.
	cmd validateLastName.
	self assert: [ cmd validLastName ] description: 'validLastName should answer true'
	