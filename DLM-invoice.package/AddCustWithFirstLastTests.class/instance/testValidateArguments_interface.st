testing - interface
testValidateArguments_interface
	"test method interface"

	self assert: [ AddCustWithFirstLast new respondsTo: #isValid ] description: 'validArguments method not recognized';
		assert: [ (AddCustWithFirstLast newWithFirst: 'Joe' Last: 'Smith') isValid isKindOf: Boolean ]
		description: 'method did not answer with Boolean'