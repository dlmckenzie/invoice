testing - interface
testisValid_interface
	"test interface"

	self
		assert: [ CustIDParam new respondsTo: #isValid ]
		description: 'CustIDParam isValid method does not exist'.
	self
		assert: [ CustIDParam new validate isValid isKindOf: Boolean ]
		description: 'method didn''t answer Boolean'