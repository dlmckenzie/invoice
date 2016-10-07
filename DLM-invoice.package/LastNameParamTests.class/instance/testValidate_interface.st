testing - interface
testValidate_interface
	"test interface"

	self
		assert: [ LastNameParam new respondsTo: #validate ]
		description: 'LastNameParam validate method does not exist'.
	self
		assert: [ LastNameParam new validate isKindOf: LastNameParam ]
		description: 'method didn''t answer self'