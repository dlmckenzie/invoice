testing - interface
testValidate_interface
	self
		assert: [ UpdateCustWithFirst new respondsTo: #validate ]
		description: 'UpdateCustWithFirst validate method does not exist'.
	self
		assert:
			[ (UpdateCustWithFirst newWithCust: (Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith' )) First: 'Joe')
				validate isMemberOf: UpdateCustWithFirst ]
		description: 'method must answer self'