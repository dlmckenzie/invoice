testing - interface
testInitializeWithID_interface

	| cmd |
	cmd := DeleteCust new.
	self
		assert: [ cmd respondsTo: #initializeWithID: ]
		description: 'initializeWithID: method does not exist'.
	self
		assert: [ (cmd initializeWithID: 1) isMemberOf: DeleteCust ]
		description: 'method did not answer with a DeleteCust object'
	