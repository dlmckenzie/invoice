testing
testInitializeWithFirstLastInterface
	"test method interface"

	| cmd |
	cmd := AddCustWithFirstLast new.
	self
		assert: [ cmd respondsTo: #initializeWithFirst:Last: ]
		description: 'initializeWithFirst:Last:App: method does not exist'.
	self
		assert: [ (cmd initializeWithFirst: 'Joe' Last: 'Smith') isMemberOf: AddCustWithFirstLast ]
		description: 'method did not answer with a Customer'