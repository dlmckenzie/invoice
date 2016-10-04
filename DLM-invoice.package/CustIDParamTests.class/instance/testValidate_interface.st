testing - interface
testValidate_interface
	"test interface"

	self
		assert: [ CustIDParam new respondsTo: #validate ]
		description: 'CustIDParam validate method does not exist'.
	self
		assert: [ CustIDParam new validate isKindOf: CustIDParam ]
		description: 'method didn''t answer self'