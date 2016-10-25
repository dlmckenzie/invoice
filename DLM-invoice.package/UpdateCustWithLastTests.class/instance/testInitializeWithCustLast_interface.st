testing - interface
testInitializeWithCustLast_interface
	"test interface	"

	| cmd |
	cmd := UpdateCustWithLast new.
	self
		assert: [ cmd respondsTo: #initializeWithCust:Last: ]
		description: 'initializeWithCust:Last method does not exist'.
	self
		assert: [ (cmd initializeWithCust: 10 Last: 'Dave') isMemberOf: UpdateCustWithLast ]
		description: 'method did not answer with a SearchCustByLast object'