testing
testInitializeWithLastInterface
	| cmd |
	cmd := SearchCustByLast new.
	self
		assert: [ cmd respondsTo: #initializeWithLast: ]
		description: 'initializeWithLast: method does not exist'.
	self
		assert: [ (cmd initializeWithLast: 'Smith') isMemberOf: SearchCustByLast ]
		description: 'method did not answer with a SearchCustByLast object'