testing
testValidLastNameAnswersFalseForInvalidLastName
	"test that validateFirstName answers true for valid first name"

	self deny: [ (AddCustWithFirstLast newWithFirst: 'Joe' Last: '' )validLastName ] description: 'validLastName should answer false'