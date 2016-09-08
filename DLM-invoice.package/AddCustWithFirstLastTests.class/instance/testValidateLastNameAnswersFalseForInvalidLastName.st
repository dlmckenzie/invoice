testing
testValidateLastNameAnswersFalseForInvalidLastName
	"test that validateFirstName answers true for valid first name"
	
	| cmd |
	cmd := AddCustWithFirstLast newWithFirst: 'Joe' Last: ''.
	cmd validateLastName.
	self deny: [ cmd validLastName ] description: 'validLastName should answer false'
	