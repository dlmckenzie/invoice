testing - interface
testValidateCust_interface
	"test method interface"

	self
		assert: [ UpdateCustWithFirst new respondsTo: #validateCust ]
		description: 'validateCust method not recognzied'.
	self
		assert: [ (UpdateCustWithFirst newWithCust: (Customer new) First: 'Dave') isMemberOf: UpdateCustWithFirst ]
		description: 'method did not answer with UpdateCustWithFirst'