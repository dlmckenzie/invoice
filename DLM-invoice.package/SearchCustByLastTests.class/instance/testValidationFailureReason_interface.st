testing - interface
testValidationFailureReason_interface
	self
		assert: [ SearchCustByLast new respondsTo: #validationError ]
		description: 'SearchCustByLast validationError does not exist'