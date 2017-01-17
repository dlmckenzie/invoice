testing - interface
testValidateLast_interface
	self
		assert: [ UpdateCustWithLast new respondsTo: #validateLast ]
		description: 'UpdateCustWithLast validateLast method does not exist'.
	self
		assert: [ (UpdateCustWithLast
				newWithCust: (Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith'))
				Last: 'Joe') validateLast isMemberOf: UpdateCustWithLast ]
		description: 'method must answer self'