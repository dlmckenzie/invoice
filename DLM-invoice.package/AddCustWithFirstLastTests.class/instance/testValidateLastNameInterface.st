testing
testValidateLastNameInterface
	"test method interface"

	| cmd |
	self
		assert: [ AddCustWithFirstLast new respondsTo: #validateLastName ]
		description: 'validateLastName method not recognized'.
	cmd := AddCustWithFirstLast newWithFirst: 'Joe' Last: 'Smith'.
	self
		assert: [ cmd validateLastName isMemberOf: AddCustWithFirstLast ]
		description: 'method did not answer with receiver'