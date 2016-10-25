testing - interface
testInitializeWithCustFirst_interface
	"test interface	"

	| cmd |
	cmd := UpdateCustWithFirst new.
	self
		assert: [ cmd respondsTo: #initializeWithCust:First: ]
		description: 'initializeWithCust:First method does not exist'.
	self
		assert: [ (cmd initializeWithCust: 10 First: 'Dave')
				isMemberOf: UpdateCustWithFirst ]
		description: 'method did not answer with a SearchCustByLast object'