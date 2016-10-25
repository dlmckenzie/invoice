testing - interface
testValidate_interface
	self
		assert: [ UpdateCustWithLast new respondsTo: #validate ]
		description: 'UpdateCustWithLast validate method does not exist'.
	self
		assert: [ (UpdateCustWithLast
				newWithCust: (Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith'))
				Last: 'Joe') validate isMemberOf: UpdateCustWithLast ]
		description: 'method must answer self'