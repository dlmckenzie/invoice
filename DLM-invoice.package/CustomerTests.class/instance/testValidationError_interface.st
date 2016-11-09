testing - interface
testValidationError_interface
	"test method interface"

	self
		assert: [ Customer new respondsTo: #validationError ]
		description: 'Customer validationError doesn''t exist'.
	self
		assert: [ (Customer newWithName: (CustomerName newWithFirst: 'Joe' Last: 'Smith')) validationError
				isKindOf: String ]
		description: 'validationError should answer a string'