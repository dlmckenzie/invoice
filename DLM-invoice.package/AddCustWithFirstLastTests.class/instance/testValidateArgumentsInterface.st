testing
testValidateArgumentsInterface
	"test method interface"

	| cmd |
	self
		assert: [ AddCustWithFirstLast new respondsTo: #validateArguments ]
		description: 'validateArguments method not recognized'.	
	cmd := AddCustWithFirstLast newWithFirst: 'Joe' Last: 'Smith'.
	self 
		assert: [ cmd validateArguments isMemberOf: AddCustWithFirstLast ]
		description: 'method did not answer with receiver' 