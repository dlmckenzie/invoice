testing
testValidateFirstNameInterface
	"test method interface"

	| cmd |
	self
		assert: [ AddCustWithFirstLast new respondsTo: #validateFirstName ]
		description: 'validateFirstName method not recognized'.
	cmd := AddCustWithFirstLast newWithFirst: 'Joe' Last: 'Smith'.
	self
		assert: [ cmd validateFirstName isMemberOf: AddCustWithFirstLast ]
		description: 'method did not answer with receiver'