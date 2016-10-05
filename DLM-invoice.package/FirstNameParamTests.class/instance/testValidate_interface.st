testing - interface
testValidate_interface
	"test interface"

	self
		assert: [ FirstNameParam new respondsTo: #validate ]
		description: 'FirstNameParam validate method does not exist'.
	self
		assert: [ FirstNameParam new validate isKindOf: FirstNameParam ]
		description: 'method didn''t answer self'