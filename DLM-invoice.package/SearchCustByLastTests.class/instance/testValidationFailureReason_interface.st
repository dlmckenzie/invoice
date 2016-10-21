testing - interface
testValidationFailureReason_interface
	self
		assert: [ SearchCustByLast new respondsTo: #validationFailureReason ]
		description: 'SearchCustByLast validationFailureReason does not exist'.