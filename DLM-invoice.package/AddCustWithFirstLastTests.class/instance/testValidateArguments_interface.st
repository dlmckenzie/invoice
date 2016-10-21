testing
testValidateArguments_interface
	"test method interface"

	self assert: [ AddCustWithFirstLast new respondsTo: #validArguments ] description: 'validArguments method not recognized';
		assert: [ (AddCustWithFirstLast newWithFirst: 'Joe' Last: 'Smith') validArguments isKindOf: Boolean ]
		description: 'method did not answer with Boolean'