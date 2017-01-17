testing - interface
testValidateCust_interface
	"test method interface"

	self
		assert: [ UpdateCustWithLast new respondsTo: #validateCust ]
		description: 'validateCust method not recognzied'.
	self
		assert: [ (UpdateCustWithLast newWithCust:9 Last: 'McKenzie')isMemberOf: UpdateCustWithLast ]
		description: 'method did not answer with UpdateCustWithLast'